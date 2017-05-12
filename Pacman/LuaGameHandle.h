#pragma once

#include "World.h"



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
	LuaObjectHandle* getPlayer() const;

	void removeTile(int x, int y);
	void removeObject(LuaObjectHandle& objectHandle);

	int getDistance(LuaObjectHandle& object1, LuaObjectHandle& object2);


	void removeEntities();
	void spawnEntities();




	~LuaGameHandle();

private:
	World* world_;
	
};

