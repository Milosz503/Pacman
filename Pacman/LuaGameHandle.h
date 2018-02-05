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

	LuaObjectHandle& createEntityHandle(sol::table luaInstance, std::string category);
	LuaObjectHandle& createTileHandle(sol::table luaInstance, std::string category, int x, int y);

	LuaObjectHandle* getTile(int x, int y) const;
	LuaObjectHandle* findEntity(sol::function condition);
	LuaObjectHandle* getPlayer() const;

	void removeTile(int x, int y);
	void removeObject(LuaObjectHandle& objectHandle);

	int getDistance(LuaObjectHandle& object1, LuaObjectHandle& object2);


	void removeEntities();
	void removeTiles();

	int getTime();

	void setSize(int x, int y);


	~LuaGameHandle();

private:
	World* world_;
	
};

