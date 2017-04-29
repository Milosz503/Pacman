#pragma once
#include <memory>

#include "GameObject.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

class World;

class Tile : public GameObject
{
public:
	//enum Type {None, Wall, Point, Border, Teleport, TypeCount };

	Tile(World* world, int x = 0, int y = 0);
	//Tile(World* world, luabridge::LuaRef& data, int x = 0, int y = 0);
	~Tile();

	virtual void update() override;

	bool isPhysical();
	void setPhysical(bool physical);







private:
	bool isPhysical_;
	void init();
};

