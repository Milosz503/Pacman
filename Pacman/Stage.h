#pragma once

#include <vector>

#include "ConsoleWindow.h"
#include "TextureManager.h"
#include "PlayerController.h"
#include "GameObject.h"

class ConsoleWindow;
class TextureManager;
class PlayerController;
class GameObject;

class Stage
{
public:

	virtual ConsoleWindow* getConsole() = 0;
	virtual TextureManager* getTextureManager() = 0;
	virtual PlayerController* getPlayerController() = 0;

	virtual GameObject* getTile(int x, int y) = 0;
	virtual std::vector<GameObject*> getEntities() = 0;

};

