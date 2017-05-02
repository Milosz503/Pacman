#include "EntityManager.h"
#include "LuaObjectHandle.h"

#include "TextureManager.h"




EntityManager::EntityManager(World* world) :
	world_(world)
{
	lua_.open_libraries(sol::lib::base, sol::lib::math);
	auto result = lua_.script_file("data/entities.lua", &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading script: " << e.what() << std::endl;
		return;
	}

	lua_["errorHandler"].set_function([](std::string err) {
		//std::cout << "Error calling lua function: " + err << std::endl;
		return err; 
	});

	sol::protected_function::set_default_handler(lua_["errorHandler"]);


	lua_.new_usertype<LuaObjectHandle>("LuaObjectHandle",
		"x", sol::property(&LuaObjectHandle::getX),
		"y", sol::property(&LuaObjectHandle::getY),
		"name", sol::property(&LuaObjectHandle::getName),
		"type", sol::property(&LuaObjectHandle::getType),
		"category", sol::property(&LuaObjectHandle::getCategory),
		"setColor", &LuaObjectHandle::setColor,
		"setTexture", &LuaObjectHandle::setTexture,
		"setSpeed", &LuaObjectHandle::setSpeed,
		"defaultSpeed", sol::property(&LuaObjectHandle::getDefaultSpeed, &LuaObjectHandle::setDefaultSpeed),
		"hp", sol::property(&LuaObjectHandle::getHp),
		"heal", &LuaObjectHandle::heal,
		"damage", &LuaObjectHandle::damage,
		"remove", &LuaObjectHandle::remove

		);

	lua_.new_usertype<LuaGameHandle>("LuaGameHandle",
		"score", sol::property(&LuaGameHandle::getScore),
		"addScore", &LuaGameHandle::addScore,
		"getTile", &LuaGameHandle::getTile,
		"removeTile", &LuaGameHandle::removeTile,
		"removeObject", &LuaGameHandle::removeObject,
		"findEntity", &LuaGameHandle::findEntity
		);


	lua_["world"] = LuaGameHandle(world);



	sol::table tiles = lua_["tiles"];
	if (!tiles.valid())
	{
		std::cout << "Error parsing tiles: " << std::endl;
		return;
	}

	sol::table entities = lua_["entities"];
	if (!entities.valid())
	{
		std::cout << "Error parsing entities: " << std::endl;
		return;
	}

	for (auto& tilePair : tiles)
	{
		if (tilePair.first.get_type() == sol::type::string && tilePair.second.get_type() == sol::type::table)
		{
			std::string name = tilePair.first.as<std::string>();

			addTile(name, tilePair.second);
		}
		else
		{
			std::cout << "Error parsing tile" << std::endl;
		}
	}


	for (auto& entityPair : entities)
	{
		if (entityPair.first.get_type() == sol::type::string && entityPair.second.get_type() == sol::type::table)
		{
			std::string name = entityPair.first.as<std::string>();

			addEntity(name, entityPair.second);
		}
		else
		{
			std::cout << "Error parsing entity" << std::endl;
		}
	}

}

void EntityManager::addTile(std::string name, sol::table data)
{
	std::string category = data["category"].get_or<std::string>("none");


	Tile* tile = new Tile(world_, data);
	tile->setName(name);


	tileTemplates_.insert(std::pair<std::string, Tile*>(name, tile));
}

void EntityManager::addEntity(std::string name, sol::table data)
{
	std::string category = data["category"].get_or<std::string>("none");


	Entity* entity = new Entity(world_, data);
	entity->setName(name);

	entityTemplates_.insert(std::pair<std::string, Entity*>(name, entity));

}

Tile * EntityManager::createTile(std::string tileName)
{
	auto it = tileTemplates_.find(tileName);
	if(it != tileTemplates_.end())
		return new Tile(*it->second);

	return nullptr;
}

Entity * EntityManager::createEntity(std::string entityName)
{
	return new Entity(*entityTemplates_.at(entityName));
}




EntityManager::~EntityManager()
{
}
