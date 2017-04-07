#include "Physics.h"

#include "Entity.h"
#include <iostream>

Physics::Physics(Stage* stage) :
	stage_(stage)
{
}

void Physics::update(sf::Time dt)
{
	std::vector<Entity*> entities = stage_->getEntities();

	for (auto& entity : entities)
	{
		//checkCollision(entity);
	}

}

void Physics::checkStaticCollisions(std::list < Pair >& collisions)
{
	std::vector<Entity*> entities = stage_->getEntities();

	for (auto& entity : entities)
	{
		checkMove(entity, collisions);
	}
}


Physics::~Physics()
{
}

void Physics::checkMove(Entity* entity, std::list < Pair >& collisions)
{
	Vector2i nextMove = entity->getNextMove();
	Vector2i position = entity->getPosition();

	Vector2i newNextMove(0, 0);

	if (nextMove.x != 0 && nextMove.y != 0)
	{
		bool isEmptyX = !stage_->isTileCollidable(position.x + nextMove.x, position.y);
		bool isEmptyY = !stage_->isTileCollidable(position.x, position.y + nextMove.y);
		bool isEmptyXY = !stage_->isTileCollidable(position.x + nextMove.x, position.y + nextMove.y);

		if ((isEmptyX || isEmptyY) && isEmptyXY)
		{
			newNextMove = nextMove;
		}
		else if (isEmptyX)
		{
			newNextMove.x = nextMove.x;

			addPair(collisions, entity, position.x + nextMove.x, position.y + nextMove.y);

		}
		else if (isEmptyY)
		{
			newNextMove.y = nextMove.y;

			addPair(collisions, entity, position.x + nextMove.x, position.y + nextMove.y);

		}
		else
		{
			addPair(collisions, entity, position.x + nextMove.x, position.y);
			addPair(collisions, entity, position.x, position.y + nextMove.y);
		}
	}
	else if(nextMove.x != 0 || nextMove.y != 0)
	{
		if (!stage_->isTileCollidable(position.x + nextMove.x, position.y + nextMove.y))
			newNextMove = nextMove;
		else
		{

			addPair(collisions, entity, position.x + nextMove.x, position.y + nextMove.y);
		}
	}

	addPair(collisions, entity, position.x + newNextMove.x, position.y + newNextMove.y);

	entity->getNextMove(newNextMove);
}

void Physics::addPair(std::list<Pair>& collisions, Entity * entity, int tileX, int tileY)
{
	Tile* tile = stage_->getTile(tileX, tileY);

	if (tile != nullptr)
	{
		collisions.push_back(Pair(entity, tile));
	}

}
