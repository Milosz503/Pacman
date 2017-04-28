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

	ConsoleWindow* getConsole();
	TextureManager* getTextureManager();
	Scene* getScene();
	EntityManager* getEntityManager();
	LuaGameHandle* getLuaGameHandle();

	~World();

private:

	int offsetX_;
	int offsetY_;
	unsigned long long frameCounter_;

	int score_;
	sf::Vector2i spawnPoint_;

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	Scene* scene_;
	EntityManager* entityManager_;
	LuaGameHandle* luaHandle_;


	

	

	
};

