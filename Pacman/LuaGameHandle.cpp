#include "LuaGameHandle.h"

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







LuaGameHandle::~LuaGameHandle()
{
}
