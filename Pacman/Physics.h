#pragma once

#include <list>

#include "Stage.h"

class Physics
{
public:
	typedef std::pair<Entity*, Tile*> StaticPair;
	typedef std::pair<Entity*, Entity*> DynamicPair;

	Physics(Stage* stage);

	void update(sf::Time dt);

	void checkStaticCollisions(std::list < StaticPair >& collisions);
	void checkDynamicCollisions(std::list < DynamicPair >& collisions);

	~Physics();


private:
	Stage* stage_;

	void checkMove(Entity* entity, std::list < StaticPair >& collisions);

	void addPair(std::list < StaticPair >& collisions, Entity* entity, int tileX, int tileY);


	
};

