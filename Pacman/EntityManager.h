#pragma once

#include <map>
#include "World.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

class EntityManager
{
public:
	EntityManager(World* world);


	Tile* createTile(std::string tileName);
	Entity* createEntity(std::string entityName);
	Entity* createPlayer();


	~EntityManager();

private:
	lua_State* L;
	World* world_;
	std::map<std::string, Tile*> tileTemplates_;
	std::map<std::string, Entity*> entityTemplates_;
	Entity* playerTemplate_;


	void addTile(luabridge::LuaRef data);
	void addEntity(luabridge::LuaRef data);

};

