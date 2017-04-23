#pragma once

#include "Entity.h"
#include "Tile.h"

class Entity;
class Tile;

struct SystemEvent
{
	enum Type {staticCollision, dynamicCollision};

	SystemEvent(Type type) : type(type) {}

	Type type;
};

struct StaticCollision : public SystemEvent
{
	StaticCollision(Entity* entity, Tile* tile) :
		SystemEvent(staticCollision),
		entity(entity),
		tile(tile)
	{}


	Entity* entity;
	Tile* tile;

};

struct DynamicCollision : public SystemEvent
{
	DynamicCollision(Entity* entity1, Entity* entity2) :
		SystemEvent(dynamicCollision),
		entity1(entity1),
		entity2(entity2)
	{}


	Entity* entity1;
	Entity* entity2;

};