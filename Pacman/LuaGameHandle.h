#pragma once

#include "World.h"

class LuaGameHandle
{
public:
	LuaGameHandle(World* world);

	void addScore(int score);
	int getScore();


	~LuaGameHandle();

private:
	World* world_;
	
};

