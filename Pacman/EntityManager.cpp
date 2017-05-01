#include "EntityManager.h"
#include "LuaObjectHandle.h"

#include "TextureManager.h"




EntityManager::EntityManager(World* world) :
	world_(world)
{
	lua_.open_libraries(sol::lib::base);
	auto result = lua_.script_file("data/entities.lua", &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading script: " << e.what() << std::endl;
		return;
	}

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
		if (tilePair.second.get_type() == sol::type::table)
		{
			addTile(tilePair.second);
		}
		else
		{
			std::cout << "Error parsing tile" << std::endl;
		}
	}


	for (auto& entityPair : entities)
	{
		if (entityPair.second.get_type() == sol::type::table)
		{
			addEntity(entityPair.second);
		}
		else
		{
			std::cout << "Error parsing entity" << std::endl;
		}
	}

}

void EntityManager::addTile(sol::table data)
{
	sol::optional<std::string> hasName = data["name"];

	if (hasName)
	{
		TextureCharacter textureCharacter;
		textureCharacter.rect.x = data["texture"]["x"].get_or(0);
		textureCharacter.rect.y = data["texture"]["y"].get_or(0);
		bool isPhysical = data["isPhysical"].get_or(false);

		Tile* tile = new Tile(world_);
		tile->setName(hasName.value());
		tile->setPhysical(isPhysical);
		tile->setTexture(textureCharacter);
		tile->setLuaFunctions(data);

		tileTemplates_.insert(std::pair<std::string, Tile*>(hasName.value(), tile));
	}
	else
	{
		std::cout << "Error tile name" << std::endl;
	}
}

void EntityManager::addEntity(sol::table data)
{
	sol::optional<std::string> hasName = data["name"];

	if (hasName)
	{
		TextureCharacter textureCharacter;
		textureCharacter.rect.x = data["texture"]["x"].get_or(0);
		textureCharacter.rect.y = data["texture"]["y"].get_or(0);
		int speed = data["speed"].get_or(20);

		Entity* entity = new Entity(world_);
		entity->setName(hasName.value());
		entity->setTexture(textureCharacter);
		entity->setDefaultSpeed(speed);

		entityTemplates_.insert(std::pair<std::string, Entity*>(hasName.value(), entity));
	}
	else
	{
		std::cout << "Error entity doesn't have a name!" << std::endl;
	}

}

Tile * EntityManager::createTile(std::string tileName)
{
	return new Tile(*tileTemplates_.at(tileName));
}

Entity * EntityManager::createEntity(std::string entityName)
{
	return new Entity(*entityTemplates_.at(entityName));
}




EntityManager::~EntityManager()
{
}
