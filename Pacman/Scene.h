#pragma once

#include <vector>
#include "Entity.h"
#include "Tile.h"
#include "System.h"
#include "LevelManager.h"

class Scene : public System
{
public:
	Scene(GameSystems systems);


	void prepareLevel(Level * level);

	unsigned addH(int x, unsigned offset);
	unsigned addV(int y, unsigned offset);

	unsigned subtractH(int x, unsigned offset);
	unsigned subtractV(int y, unsigned offset);

	unsigned normalizeH(int x);
	unsigned normalizeV(int y);

	sf::Vector2i normalize(sf::Vector2i position);

	bool isInside(unsigned x, unsigned y);
	bool isTilePhysical(unsigned x, unsigned y);
	Tile* getTile(unsigned x, unsigned y);

	std::vector<Entity*>& getEntities();

	Entity* getPlayer();

	unsigned getWidth();
	unsigned getHeight();


	void addEntity(Entity::Type type, int x, int y);
	void addTile(Tile::Type type, int x, int y);
	void addTeleport(int x, int y, int targetX, int targetY);

	virtual void update() override;

	void draw();

	~Scene();

private:
	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;

	Entity* player_;

	unsigned width_;
	unsigned height_;
};

