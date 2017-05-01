#include "LuaGameHandle.h"




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





LuaGameHandle::~LuaGameHandle()
{
}
