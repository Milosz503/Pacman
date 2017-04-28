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


LuaGameHandle::~LuaGameHandle()
{
}
