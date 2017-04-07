#pragma once

#include <list>

#include "Stage.h"

class Physics
{
public:
	typedef std::pair<Entity*, Tile*> Pair;

	Physics(Stage* stage);

	void update(sf::Time dt);

	void checkStaticCollisions(std::list < Pair >& collisions);

	~Physics();


private:
	Stage* stage_;

	void checkMove(Entity* entity, std::list < Pair >& collisions);
	void addPair(std::list < Pair >& collisions, Entity* entity, int tileX, int tileY);

	
};

