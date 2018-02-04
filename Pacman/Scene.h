#pragma once

#include <vector>
#include "Entity.h"
#include "Tile.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>


class World;
class EntityManager;

struct SpawnPoint
{
	sf::Vector2i position;

	std::string entityName;
	sol::table data;

};


class Scene
{
public:
	Scene(World* world);



	sf::Vector2i normalize(sf::Vector2i position) const;

	bool isInside(unsigned x, unsigned y);
	bool isTilePhysical(int x, int y);
	bool isTilePhysicalF(sf::Vector2i& pos);
	Tile* getTile(int x, int y) const;

	std::vector<Entity*>& getEntities();

	Entity* getPlayer();

	unsigned getWidth();
	unsigned getHeight();
	void setSize(int width, int height);


	void addEntity(Entity* entity);

	void addTile(std::string tileName, int x, int y, sol::table & data);
	void addTile(Tile* tile);


	void removeTile(int x, int y);

	void moveEntity(Entity* entity, sf::Vector2i& move);

	void addSpawn(sf::Vector2i position, std::string entityName, sol::table& data);
	void arrangeSpawnEntities();
	void removeEntities();

	void update();

	void draw();

	~Scene();

private:
	World* world_;
	EntityManager* entityManager_;

	std::vector<SpawnPoint> spawns_;
	std::vector<Entity*> entities_;
	std::vector<std::vector<Tile*>> tiles_;

	Entity* player_;

	int width_;
	int height_;

	bool entitiesToSpawn_;


	
	void spawnEntity(SpawnPoint* spawn);
	void spawnEntites();
};

