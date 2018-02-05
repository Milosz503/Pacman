#include "World.h"

#include <iostream>
#include <algorithm>




World::World(State::Context context) :
	score_(0),
	playerLives_(3),
	console_(context.console),
	textureManager_(context.textureManager),
	frameCounter_(0),
	luaManager_(this)
	
{

	luaHandle_ = new LuaGameHandle(this);
	entityManager_ = new EntityManager(this);
	
	scene_ = new Scene(this);
	
	LevelManager::loadLevel(this, *context.levelFile);

}

void World::update()
{
	scene_->update();

	++frameCounter_;
	
}

void World::draw()
{
	scene_->draw();
}

sf::IntRect World::getBounds()
{
	return sf::IntRect(0, 0, scene_->getWidth(), scene_->getHeight());
}

unsigned long long World::getFrameNumber()
{
	return frameCounter_;
}

int World::getScore()
{
	return score_;
}

void World::addScore(unsigned score)
{
	score_ += score;
}

int World::getLives()
{
	return playerLives_;
}

void World::removeLive()
{
	--playerLives_;
}

void World::addLives(int lives)
{
	playerLives_ += lives;
}

ConsoleWindow * World::getConsole()
{
	return console_;
}

TextureManager * World::getTextureManager()
{
	return textureManager_;
}

Scene * World::getScene()
{
	return scene_;
}

EntityManager * World::getEntityManager()
{
	return entityManager_;
}

LuaGameHandle * World::getLuaGameHandle()
{
	return luaHandle_;
}

LuaManager & World::getLuaManager()
{
	return luaManager_;
}

sol::state & World::getLua()
{
	return luaManager_.getLua();
}


World::~World()
{
}
