#pragma once

#include <SFML\Graphics.hpp>
#include <vector>

#include "State.h"
#include "Stage.h"
#include "Entity.h"
#include "Tile.h"
#include "Physics.h"
#include "EntityController.h"
#include "Scene.h"
#include "EntityManager.h"
#include "LuaGameHandle.h"

#include "sol.hpp"

class EntityManager;
class LuaGameHandle;

class World
{
public:
	World(State::Context context);

	void update();
	void draw();

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
	EntityManager* getEntityManager();
	LuaGameHandle* getLuaGameHandle();
	sol::state& getLua();

	~World();

private:

	unsigned long long frameCounter_;

	int score_;
	int playerLives_;

	sol::state lua_;
	ConsoleWindow* console_;
	TextureManager* textureManager_;
	Scene* scene_;
	EntityManager* entityManager_;
	LuaGameHandle* luaHandle_;


	

	

	
};

