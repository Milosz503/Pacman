#include "World.h"

#include <iostream>
#include <algorithm>




World::World(State::Context context) :
	score_(0),
	playerLives_(1),
	isEditMode_(false),
	levelFile_(*context.levelFile),
	console_(context.console),
	textureManager_(context.textureManager),
	sounds_(context.sounds),
	frameCounter_(0),
	scene_(this),
	luaManager_(this)
	
{


	luaManager_.init();
	//LevelManager::loadLevel(this, *context.levelFile);

}

void World::setSystems(SystemManager * systems)
{
	systems_ = systems;
}


void World::update()
{
	scene_.update();

	++frameCounter_;
	
}

void World::draw()
{
	scene_.draw();
}

std::string World::getLevelFile()
{
	return levelFile_;
}

sf::IntRect World::getBounds()
{
	return sf::IntRect(0, 0, scene_.getWidth(), scene_.getHeight());
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

void World::setLives(int lives)
{
	playerLives_ = lives;
}

ConsoleWindow * World::getConsole()
{
	return console_;
}

TextureManager * World::getTextureManager()
{
	return textureManager_;
}

SoundPlayer * World::getSounds()
{
	return sounds_;
}

Scene * World::getScene()
{
	return &scene_;
}



LuaManager & World::getLuaManager()
{
	return luaManager_;
}

SystemManager * World::getSystems()
{
	return systems_;
}

sol::state & World::getLua()
{
	return luaManager_.getLua();
}




bool World::isEditMode()
{
	return isEditMode_;
}

void World::setEditMode(bool isEdit)
{
	isEditMode_ = isEdit;
}

sf::Vector2i World::getSceneOffset()
{
	return sceneOffset_;
}

void World::setSceneOffset(sf::Vector2i offset)
{
	sceneOffset_ = offset;
}

void World::endGame(std::string content, CharacterColor::Color color)
{
	isGameEnded_ = true;
	endGameContent_ = content;
	endGameColor_ = color;
}

bool World::isGameEnded()
{
	return isGameEnded_;
}

std::string World::getEndGameContent()
{
	return endGameContent_;
}

CharacterColor::Color World::getEndGameColor()
{
	return endGameColor_;
}

World::~World()
{
}
