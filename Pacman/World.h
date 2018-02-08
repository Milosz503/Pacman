#pragma once

#include <SFML\Graphics.hpp>
#include <vector>

#include "LuaManager.h"
#include "State.h"
#include "Entity.h"
#include "Tile.h"
#include "Physics.h"
#include "EntityController.h"
#include "Scene.h"
#include "LuaGameHandle.h"
#include "SystemManager.h"


class LuaGameHandle;

class World
{
public:
	World(State::Context context);
	void setSystems(SystemManager* systems);


	void update();
	void draw();

	std::string getLevelFile();
	sf::IntRect getBounds();

	unsigned long long getFrameNumber();
	int getScore();
	void addScore(unsigned score = 1);

	int getLives();
	void removeLive();
	void addLives(int lives);

	ConsoleWindow* getConsole();
	TextureManager* getTextureManager();
	Scene* getScene();
	LuaManager& getLuaManager();
	SystemManager* getSystems();
	sol::state& getLua();

	bool isEditMode();
	void setEditMode(bool isEdit);

	~World();

private:

	unsigned long long frameCounter_;

	int score_;
	int playerLives_;
	bool isEditMode_;

	std::string levelFile_;

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	SystemManager* systems_;
	Scene scene_;
	LuaManager luaManager_;


	

	

	

	
};

