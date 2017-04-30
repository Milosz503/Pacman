#pragma once

#include <map>
#include "World.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

#include "sol.hpp"

class EntityManager
{
public:
	EntityManager(World* world);


	Tile* createTile(std::string tileName);
	Entity* createEntity(std::string entityName);


	~EntityManager();

private:
	sol::state lua_;
	lua_State* L;
	World* world_;
	std::map<std::string, Tile*> tileTemplates_;
	std::map<std::string, Entity*> entityTemplates_;



	void addTile(luabridge::LuaRef data);
	void addEntity(luabridge::LuaRef data);

};

