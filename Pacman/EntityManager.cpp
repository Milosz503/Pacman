#include "EntityManager.h"
#include "LuaObjectHandle.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

#include "TextureManager.h"

#define NAME(x) (#x)

using namespace luabridge;

EntityManager::EntityManager(World* world) :
	world_(world)
{

	L = luaL_newstate();
	luaL_openlibs(L);
	if (luaL_dofile(L, "data/entities.lua") != 0)
	{
		std::cout << "Error loading file " << "data/entities.lua" << "  " << lua_tostring(L, -1) << std::endl;
		return;
	}
	
	lua_pcall(L, 0, 0, 0);



	getGlobalNamespace(L).
		beginClass<LuaObjectHandle>("LuaObjectHandle").
			addProperty("x", &LuaObjectHandle::getX).
			addProperty("y", &LuaObjectHandle::getY).
			addProperty("name", &LuaObjectHandle::getName).
			addProperty("type", &LuaObjectHandle::getType).
			addFunction("setPosition", &LuaObjectHandle::setPosition).
			addFunction("setColor", &LuaObjectHandle::setColor).
			addFunction("setTexture", &LuaObjectHandle::setTexture).
		endClass();

	getGlobalNamespace(L).
		beginClass<LuaGameHandle>("LuaGameHandle").
			addFunction("addScore", &LuaGameHandle::addScore).
			addFunction("getScore", &LuaGameHandle::getScore).
			addFunction("removeTile", &LuaGameHandle::removeTile).
			addFunction("removeObject", &LuaGameHandle::removeObject).
			addFunction("getTile", &LuaGameHandle::getTile).
		endClass();

	LuaRef handle(L);
	handle = *world_->getLuaGameHandle();

	setGlobal(L, *world_->getLuaGameHandle(), "world");

	//getGlobalNamespace(L).addVariable("world", &handle, false);
	

	LuaRef tiles = getGlobal(L, "tiles");

	if (tiles.isNil())
	{
		std::cout << "Error loading tiles!" << lua_tostring(L, -1) << std::endl;
		return;
	}

	for (int i = 1; !tiles[i].isNil(); ++i)
	{
		addTile(tiles[i]);
	}



	LuaRef entities = getGlobal(L, "entities");

	if (entities.isNil())
	{
		std::cout << "Error loading entities!" << lua_tostring(L, -1) << std::endl;
		return;
	}
	for (int i = 1; !entities[i].isNil(); ++i)
	{
		addEntity(entities[i]);
	}


	playerTemplate_ = new Entity(world_);
	playerTemplate_->setName("player");
	
	LuaRef playerData = getGlobal(L, "player");
	if (playerData.isNil())
	{
		std::cout << "Error loading player!" << lua_tostring(L, -1) << std::endl;
		return;
	}
	else
	{
		playerTemplate_->setLuaFunctions(playerData);
	}
	if (!playerData["texture"].isNil())
	{
		luabridge::LuaRef texture = playerData["texture"];

		if (!texture["x"].isNil() && texture["x"].isNumber() &&
			!texture["y"].isNil() && texture["y"].isNumber())
		{
			TextureCharacter textureCharacter;
			textureCharacter.rect.x = texture["x"].cast<int>();
			textureCharacter.rect.y = texture["y"].cast<int>();

			playerTemplate_->setTexture(textureCharacter);
		}
	}


	//lua_close(L);
}

void EntityManager::addTile(luabridge::LuaRef data)
{
	if (!data["name"].isNil() && data["name"].isString())
	{
		Tile* tile = new Tile(world_);

		tile->setLuaFunctions(data);
		
		tile->setName(data["name"].cast<std::string>());

		if (!data["isPhysical"].isNil())
		{
			tile->setPhysical(data["isPhysical"].cast<bool>());
		}
		if (!data["texture"].isNil())
		{
			luabridge::LuaRef texture = data["texture"];

			if (!texture["x"].isNil() && texture["x"].isNumber() &&
				!texture["y"].isNil() && texture["y"].isNumber())
			{
				TextureCharacter textureCharacter;
				textureCharacter.rect.x = texture["x"].cast<int>();
				textureCharacter.rect.y = texture["y"].cast<int>();

				tile->setTexture(textureCharacter);
			}
		}
		tile->setLuaData(newTable(L));

		tileTemplates_.insert(std::pair<std::string, Tile*>(data["name"].cast<std::string>(), tile));

	}
}

void EntityManager::addEntity(luabridge::LuaRef data)
{
	if (!data["name"].isNil() && data["name"].isString())
	{
		Entity* entity = new Entity(world_);
		entity->setLuaFunctions(data);

		entity->setName(data["name"].cast<std::string>());

		if (!data["texture"].isNil())
		{
			luabridge::LuaRef texture = data["texture"];

			if (!texture["x"].isNil() && texture["x"].isNumber() &&
				!texture["y"].isNil() && texture["y"].isNumber())
			{
				TextureCharacter textureCharacter;
				textureCharacter.rect.x = texture["x"].cast<int>();
				textureCharacter.rect.y = texture["y"].cast<int>();

				entity->setTexture(textureCharacter);
			}
		}

		if (!data["speed"].isNil() && data["speed"].isNumber())
		{
			entity->setDefaultSpeed(data["speed"].cast<int>());
		}
	/*	if (!data["collide"].isNil() && data["collide"].isFunction())
		{
			entity->setCollideFunction(data["collide"]);
			std::cout << data["name"].cast<std::string>() << " func SUC" << std::endl;
		}
		else
		{
			std::cout << data["name"].cast<std::string>() << " doesnt have func" << std::endl;
		}*/

		entityTemplates_.insert(std::pair<std::string, Entity*>(data["name"].cast<std::string>(), entity));

	}

}

Tile * EntityManager::createTile(std::string tileName)
{
	Tile* tile = new Tile(*tileTemplates_.at(tileName));

	return tile;
}

Entity * EntityManager::createEntity(std::string entityName)
{
	return new Entity(*entityTemplates_.at(entityName));
}

Entity * EntityManager::createPlayer()
{
	return new Entity(*playerTemplate_);
}


EntityManager::~EntityManager()
{
}
