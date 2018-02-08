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

LuaObjectHandle * LuaGameHandle::createEntityHandle(sol::table luaInstance, std::string category)
{
	Entity* e = world_->getScene()->createEntity(luaInstance, category);

	return &e->getHandle();
}

LuaObjectHandle * LuaGameHandle::createTileHandle(sol::table luaInstance, std::string category, int x, int y)
{
	Tile* t = world_->getScene()->createTile(luaInstance, category, x, y);

	return &t->getHandle();
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
	Tile* tile = world_->getScene()->getTile(x, y);
	if (tile)
	{
		tile->markToRemove();
	}
}

void LuaGameHandle::removeObject(LuaObjectHandle * objectHandle)
{
	objectHandle->getObject()->markToRemove();
	std::cout << "REMOVED " << objectHandle->getX() << " " << objectHandle->getY() << std::endl;
}

int LuaGameHandle::getDistance(LuaObjectHandle * object1, LuaObjectHandle * object2)
{
	if (!object1 || !object2)
		return 0;
	Vector2i pos1 = object1->getObject()->getPosition();
	Vector2i pos2 = object2->getObject()->getPosition();



	return abs(pos1.x - pos2.x) + abs(pos1.y - pos2.y);
}

void LuaGameHandle::removeEntities()
{
	world_->getScene()->removeEntities();
}

void LuaGameHandle::removeTiles()
{
	world_->getScene()->removeTiles();
}


int LuaGameHandle::getTime()
{
	return world_->getFrameNumber();
}

void LuaGameHandle::setSize(int x, int y)
{
	world_->getScene()->setSize(x, y);
}

int LuaGameHandle::getWidth()
{
	return world_->getScene()->getWidth();
}

int LuaGameHandle::getHeight()
{
	return world_->getScene()->getHeight();
}








LuaGameHandle::~LuaGameHandle()
{
}
