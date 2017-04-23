#include "World.h"

#include <iostream>
#include <algorithm>

#include "Teleport.h"

World::World(State::Context context) :
	width_(40),
	height_(40),
	offsetX_(0),
	offsetY_(0),
	score_(0),
	spawnPoint_(2 + offsetX_, 2 + offsetY_),
	console_(context.console),
	textureManager_(context.textureManager),
	frameCounter_(0)
	
{
	scene_ = new Scene(this);

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
	return sf::IntRect(offsetX_, offsetY_, width_, height_);
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


World::~World()
{
}
