#pragma once

#include <list>

#include "System.h"

class Physics : public System
{
public:
	typedef std::pair<Entity*, Tile*> StaticPair;
	typedef std::pair<Entity*, Entity*> DynamicPair;

	Physics(GameSystems systems);

	virtual void update() override;

	void checkStaticCollisions(std::list < StaticPair >& collisions);
	void checkDynamicCollisions(std::list < DynamicPair >& collisions);

	~Physics();


private:

	Scene* scene_;

	void checkMove(Entity* entity, std::list < StaticPair >& collisions);

	void addPair(std::list < StaticPair >& collisions, Entity* entity, int tileX, int tileY);


	
};

