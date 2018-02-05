#pragma once

#include "sol.hpp"

class World;
class LuaObjectHandle;

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

	LuaObjectHandle* createEntityHandle(sol::table entity, std::string category);
	LuaObjectHandle* createTileHandle(sol::table tile, int x, int y, std::string category);

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

