#pragma once

#include <vector>
#include "Entity.h"
#include "Tile.h"


class World;


class Scene
{
public:
	Scene(World* world);



	sf::Vector2i normalize(sf::Vector2i position) const;

	bool isInside(unsigned x, unsigned y);
	bool isTilePhysical(int x, int y);
	bool isTilePhysicalF(sf::Vector2i& pos);
	Tile* getTile(int x, int y) const;
	Entity* findEntity(int x, int y) const;

	std::vector<Entity*>& getEntities();

	Entity* getPlayer();

	unsigned getWidth();
	unsigned getHeight();
	void setSize(int width, int height);



	Tile* createTile(sol::table luaInstance, std::string category, int x, int y);
	Entity* createEntity(sol::table luaInstance, std::string category);


	

	void moveEntity(Entity* entity, sf::Vector2i& move);

	void removeEntities();
	void removeTiles();

	void update();
	void draw();

	~Scene();

private:
	World* world_;

	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;
	std::vector<Tile*> tilesToRemove_;

	Entity* player_;

	int width_;
	int height_;

	void cleanObjects();

};

