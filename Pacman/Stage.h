#pragma once

#include <vector>

#include "ConsoleWindow.h"
#include "TextureManager.h"

class ConsoleWindow;
class TextureManager;
class PlayerController;
class GameObject;
class Entity;
class Tile;

class Stage
{
public:

	virtual ConsoleWindow* getConsole() = 0;
	virtual TextureManager* getTextureManager() = 0;
	virtual PlayerController* getPlayerController() = 0;

	virtual Tile* getTile(int x, int y) = 0;
	virtual std::vector<Entity*>& getEntities() = 0;
	virtual Entity* getPlayer() = 0;

	virtual unsigned long long getFrameNumber() = 0;

	virtual sf::IntRect getBounds() = 0;

	virtual void moveTile(int x, int y, Vector2i offset) = 0;
	virtual bool isTileCollidable(int x, int y) = 0;
	virtual bool isTileEmpty(int x, int y) = 0;
	virtual bool isInside(int x, int y) = 0;

};

