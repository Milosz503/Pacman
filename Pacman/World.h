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

	int getLives();
	void removeLive();
	void addLives(int lives);

	ConsoleWindow* getConsole();
	TextureManager* getTextureManager();
	Scene* getScene();
	EntityManager* getEntityManager();
	LuaGameHandle* getLuaGameHandle();
	LuaManager& getLuaManager();
	sol::state& getLua();

	~World();

private:

	unsigned long long frameCounter_;

	int score_;
	int playerLives_;

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	Scene* scene_;
	EntityManager* entityManager_;
	LuaManager luaManager_;
	LuaGameHandle* luaHandle_;


	

	

	
};

