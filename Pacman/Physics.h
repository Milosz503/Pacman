#pragma once

#include <list>

#include "Entity.h"
#include "Tile.h"
#include "System.h"

class Scene;
class Entity;
class Tile;
class World;

class Physics : public System
{
public:
	typedef std::pair<Entity*, Tile*> StaticPair;
	typedef std::pair<Entity*, Entity*> DynamicPair;

	Physics(SystemManager* systemManager, World* world);

	virtual void update() override;

	void checkStaticCollisions(std::list < StaticPair >& collisions);
	void checkDynamicCollisions(std::list < DynamicPair >& collisions);

	~Physics();


private:

	Scene* scene_;

	
	void checkMove(Entity* entity, std::list < StaticPair >& collisions);

	void addPair(std::list < StaticPair >& collisions, Entity* entity, int tileX, int tileY);


	
};

