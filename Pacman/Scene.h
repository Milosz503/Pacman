#pragma once

#include <vector>
#include "Entity.h"
#include "Tile.h"


class Level;
class World;

class Scene
{
public:
	Scene(World* world);


	void prepareLevel(Level * level);

	unsigned addH(int x, unsigned offset);
	unsigned addV(int y, unsigned offset);

	unsigned subtractH(int x, unsigned offset);
	unsigned subtractV(int y, unsigned offset);

	unsigned normalizeH(int x);
	unsigned normalizeV(int y);

	sf::Vector2i normalize(sf::Vector2i position);

	bool isInside(unsigned x, unsigned y);
	bool isTilePhysical(int x, int y);
	bool isTilePhysicalF(sf::Vector2i& pos);
	Tile* getTile(int x, int y);

	std::vector<Entity*>& getEntities();

	Entity* getPlayer();

	unsigned getWidth();
	unsigned getHeight();


	void addEntity(Entity::Type type, int x, int y);
	void addTile(Tile::Type type, int x, int y);
	void addTeleport(int x, int y, int targetX, int targetY);

	void moveEntity(Entity* entity, sf::Vector2i& move);

	void update();

	void draw();

	~Scene();

private:
	World* world_;

	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;

	Entity* player_;

	int width_;
	int height_;
};

