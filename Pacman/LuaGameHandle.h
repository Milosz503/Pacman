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

	void addLive();
	void addLives(int lives);
	void removeLive();
	int getLives();

	LuaObjectHandle* getTile(int x, int y) const;
	LuaObjectHandle* findEntity(sol::function condition);
	LuaObjectHandle* getPlayer() const;

	void removeTile(int x, int y);
	void removeObject(LuaObjectHandle& objectHandle);

	int getDistance(LuaObjectHandle& object1, LuaObjectHandle& object2);


	void removeEntities();
	void spawnEntities();

	int getTime();


	~LuaGameHandle();

private:
	World* world_;
	
};

