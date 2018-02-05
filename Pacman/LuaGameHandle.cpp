#include "LuaGameHandle.h"
#include "World.h"
#include "GameObject.h"
#include <cmath>


LuaGameHandle::LuaGameHandle(World * world) :
	world_(world)
{
}

void LuaGameHandle::addScore(int score)
{
	world_->addScore(score);
}

int LuaGameHandle::getScore()
{
	return world_->getScore();
}

void LuaGameHandle::addLive()
{
	world_->addLives(1);
}

void LuaGameHandle::addLives(int lives)
{
	world_->addLives(lives);
}

void LuaGameHandle::removeLive()
{
	world_->removeLive();
}

int LuaGameHandle::getLives()
{
	return world_->getLives();
}

LuaObjectHandle * LuaGameHandle::createEntityHandle(sol::table entity, std::string category)
{
	return nullptr;
}

LuaObjectHandle * LuaGameHandle::createTileHandle(sol::table tile, int x, int y, std::string category)
{
	return nullptr;
}

LuaObjectHandle*  LuaGameHandle::getTile(int x, int y) const
{
	Tile* tile = world_->getScene()->getTile(x, y);


	if (tile != nullptr)
		return &tile->getHandle();

	else
		return nullptr;
}

LuaObjectHandle * LuaGameHandle::findEntity(sol::function condition)
{
	auto entities = world_->getScene()->getEntities();

	for (auto& entity : entities)
	{
		if (condition(entity->getHandle()))
		{
			return &entity->getHandle();
		}
	}
	return nullptr;
}

LuaObjectHandle * LuaGameHandle::getPlayer() const
{
	Entity* player = world_->getScene()->getPlayer();
	if(player != nullptr)
		return &player->getHandle();

	return nullptr;
}

void LuaGameHandle::removeTile(int x, int y)
{
	world_->getScene()->removeTile(x, y);
}

void LuaGameHandle::removeObject(LuaObjectHandle & objectHandle)
{
	objectHandle.getObject()->markToRemove();
	std::cout << "REMOVED " << objectHandle.getX() << " " << objectHandle.getY() << std::endl;
}

int LuaGameHandle::getDistance(LuaObjectHandle & object1, LuaObjectHandle & object2)
{
	Vector2i pos1 = object1.getObject()->getPosition();
	Vector2i pos2 = object2.getObject()->getPosition();



	return abs(pos1.x - pos2.x) + abs(pos1.y - pos2.y);
}

void LuaGameHandle::removeEntities()
{
	world_->getScene()->removeEntities();
}

void LuaGameHandle::spawnEntities()
{
	world_->getScene()->arrangeSpawnEntities();
}

int LuaGameHandle::getTime()
{
	return world_->getFrameNumber();
}








LuaGameHandle::~LuaGameHandle()
{
}
