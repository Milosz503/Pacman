#pragma once

#include <SFML\Graphics.hpp>
#include <vector>

#include "State.h"
#include "Stage.h"
#include "Entity.h"
#include "Tile.h"
#include "Physics.h"


class World : public Stage
{
public:
	World(State::Context context);

	void update(sf::Time dt);
	void handleEvent(sf::Event event);
	void draw();

	virtual ConsoleWindow* getConsole() override;
	virtual TextureManager* getTextureManager() override;
	virtual PlayerController* getPlayerController() override;

	virtual Tile* getTile(int x, int y) override;
	virtual std::vector<Entity*> getEntities() override;

	virtual unsigned long long getFrameNumber() override;

	virtual void moveTile(int x, int y, Vector2i offset) override;
	virtual bool isTileCollidable(int x, int y) override;
	virtual bool isTileEmpty(int x, int y) override;

	~World();

private:

	ConsoleWindow* console_;
	TextureManager* textureManager_;
	PlayerController* playerController_;

	Physics physics_;

	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;

	unsigned long long frameCounter_;

	unsigned width_;
	unsigned height_;

	int offsetX_;
	int offsetY_;

	void prepareLevel();

	void addTile(Tile::Type type, int x, int y);
	void addEntity(Entity::Type type, int x, int y);

	void removeTile(int x, int y);

	void handleStaticCollisions();
};

