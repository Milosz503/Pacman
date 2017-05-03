#include "World.h"

#include <iostream>
#include <algorithm>

#include "Teleport.h"

World::World(State::Context context) :
	offsetX_(0),
	offsetY_(0),
	score_(0),
	spawnPoint_(2 + offsetX_, 2 + offsetY_),
	console_(context.console),
	textureManager_(context.textureManager),
	frameCounter_(0)
	
{
	luaHandle_ = new LuaGameHandle(this);
	scene_ = new Scene(this);
	entityManager_ = new EntityManager(this);
	
	

}

void World::update()
{
	scene_->update();

	++frameCounter_;

	//std::cout << "Entities: " << scene_->getEntities().size() << std::endl;
	
}

void World::draw()
{
	scene_->draw();
}

sf::IntRect World::getBounds()
{
	return sf::IntRect(offsetX_, offsetY_, scene_->getWidth(), scene_->getHeight());
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

sol::state & World::getLua()
{
	return lua_;
}


World::~World()
{
}
