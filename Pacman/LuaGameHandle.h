#pragma once

#include "World.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

struct ObjectEvent
{

};

class LuaGameHandle
{
public:
	LuaGameHandle(World* world);

	void addScore(int score);
	int getScore();

	LuaObjectHandle* getTile(int x, int y) const;
	LuaObjectHandle* findEntity(sol::function condition);

	void removeTile(int x, int y);
	void removeObject(LuaObjectHandle& objectHandle);






	~LuaGameHandle();

private:
	World* world_;
	
};

