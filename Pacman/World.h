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
#include "SoundPlayer.h"

class LuaGameHandle;

class World
{
public:
	World(State::Context context);
	void setSystems(SystemManager* systems);


	void update();
	void draw();

	std::string getLevelName();
	sf::IntRect getBounds();

	unsigned long long getFrameNumber();
	int getScore();
	void addScore(unsigned score = 1);

	int getLives();
	void removeLive();
	void setLives(int lives);

	ConsoleWindow* getConsole();
	TextureManager* getTextureManager();
	SoundPlayer* getSounds();
	Scene* getScene();
	LuaManager& getLuaManager();
	SystemManager* getSystems();
	sol::state& getLua();

	bool isEditMode();
	void setEditMode(bool isEdit);

	sf::Vector2i getSceneOffset();
	void setSceneOffset(sf::Vector2i offset);

	void endGame(std::string content, CharacterColor::Color color);
	bool isGameEnded();
	std::string getEndGameContent();
	CharacterColor::Color getEndGameColor();

	~World();

private:

	unsigned long long frameCounter_;

	int score_;
	int playerLives_;
	bool isEditMode_;

	sf::Vector2i sceneOffset_;

	std::string levelName_;

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	SoundPlayer* sounds_;
	SystemManager* systems_;
	Scene scene_;
	LuaManager luaManager_;

	bool isGameEnded_;
	std::string endGameContent_;
	CharacterColor::Color endGameColor_;



	

	

	

	
};

