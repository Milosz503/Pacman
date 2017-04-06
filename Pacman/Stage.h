#pragma once

#include <vector>

#include "ConsoleWindow.h"
#include "TextureManager.h"
#include "PlayerController.h"

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
	virtual std::vector<Entity*> getEntities() = 0;

};

