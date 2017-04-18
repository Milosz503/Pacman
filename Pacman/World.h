#pragma once

#include <SFML\Graphics.hpp>
#include <vector>

#include "State.h"
#include "Stage.h"
#include "Entity.h"
#include "Tile.h"
#include "Physics.h"
#include "EntityController.h"


class World : public Stage
{
public:
	World(State::Context context);

	int getScore();

	void prepareLevel();
	void prepareLevel(Level* level);

	void update(sf::Time dt);
	void handleEvent(sf::Event event);
	void draw();

	virtual ConsoleWindow* getConsole() override;
	virtual TextureManager* getTextureManager() override;
	virtual PlayerController* getPlayerController() override;

	virtual Tile* getTile(int x, int y) override;
	virtual std::vector<Entity*>& getEntities() override;
	virtual Entity* getPlayer() override;

	virtual unsigned long long getFrameNumber() override;

	virtual sf::IntRect getBounds() override;

	virtual void moveTile(int x, int y, Vector2i offset) override;
	virtual bool isTileCollidable(int x, int y) override;
	virtual bool isTileEmpty(int x, int y) override;
	virtual bool isInside(int x, int y) override;



	void addTile(Tile::Type type, int x, int y);
	void addTeleport(int x, int y, int targetX, int targetY);
	void addEntity(Entity::Type type, int x, int y);

	void removeTile(int x, int y);

	~World();

private:
	unsigned width_;
	unsigned height_;

	int offsetX_;
	int offsetY_;
	unsigned long long frameCounter_;

	int score_;
	sf::Vector2i spawnPoint_;

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	PlayerController* playerController_;

	Physics physics_;
	EntityController entityController_;


	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;

	

	

	

	Entity* player_;

	void handleStaticCollisions();
	void handleDynamicCollisions();

	

	

	
};

