#include "Physics.h"

#include "Entity.h"
#include "WOrld.h"
#include <iostream>

using namespace sf;


Physics::Physics(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	scene_(world->getScene())
{
}

void Physics::update()
{
	checkStaticCollisions(std::list<StaticPair>());
	checkDynamicCollisions(std::list<DynamicPair>());



}

void Physics::checkStaticCollisions(std::list < StaticPair >& collisions)
{
	std::vector<Entity*>& entities = scene_->getEntities();

	for (auto& entity : entities)
	{
		checkMove(entity, collisions);
	}
}

void Physics::checkDynamicCollisions(std::list<DynamicPair>& collisions)
{

	std::vector<Entity*>& entities = scene_->getEntities();

	for (int i = 0; i < entities.size(); ++i)
	{
		for (int j = i + 1; j < entities.size(); ++j)
		{
			if (entities[i]->getNextMove() == -entities[j]->getNextMove())
			{
				if (entities[i]->getNextPosition() == entities[j]->getPosition())
				{
					collisions.push_back(DynamicPair(entities[i], entities[j]));
					DynamicCollision event(entities[i], entities[j]);
					sendEvent(&event);
				}
			}
			else if(entities[i]->getNextPosition() == entities[j]->getNextPosition())
			{
				collisions.push_back(DynamicPair(entities[i], entities[j]));
				DynamicCollision event(entities[i], entities[j]);
				sendEvent(&event);
			}
			
		}
	}



}


Physics::~Physics()
{
}

void Physics::checkMove(Entity* entity, std::list < StaticPair >& collisions)
{
	bool isGhost = entity->getCategory() == "ghost";

	std::cout << isGhost << std::endl;


	Vector2i nextMove = entity->getNextMove();
	Vector2i position = entity->getPosition();

	


	//entity->setPosition(position);

	Vector2i newNextMove(0, 0);

	if (nextMove.x != 0 && nextMove.y != 0)
	{
		
		bool isEmptyX;
		bool isEmptyY;
		bool isEmptyXY;

		if (isGhost)
		{
			Tile* tile = scene_->getTile(position.x + nextMove.x, position.y);
			if (tile != nullptr && tile->getCategory() == "ghostBase")
			{
				isEmptyX = true;
			}
			else
			{
				isEmptyX = !scene_->isTilePhysical(position.x + nextMove.x, position.y);
			}

			tile = scene_->getTile(position.x, position.y + nextMove.y);
			if (tile != nullptr && tile->getCategory() == "ghostBase")
			{
				isEmptyY = true;
			}
			else
			{
				isEmptyY = !scene_->isTilePhysical(position.x, position.y + nextMove.y);
			}

			tile = scene_->getTile(position.x + nextMove.x, position.y + nextMove.y);
			if (tile != nullptr && tile->getCategory() == "ghostBase")
			{
				isEmptyXY = true;
			}
			else
			{
				isEmptyXY = !scene_->isTilePhysical(position.x + nextMove.x, position.y + nextMove.y);
			}
		}
		else
		{
			isEmptyX = !scene_->isTilePhysical(position.x + nextMove.x, position.y);
			isEmptyY = !scene_->isTilePhysical(position.x, position.y + nextMove.y);
			isEmptyXY = !scene_->isTilePhysical(position.x + nextMove.x, position.y + nextMove.y);
		}

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
		bool isEmpty;

		if (isGhost)
		{
			Tile* tile = scene_->getTile(position.x + nextMove.x, position.y + nextMove.y);
			if (tile != nullptr && tile->getCategory() == "ghostBase")
			{
				isEmpty = true;
			}
			else
			{
				isEmpty = !scene_->isTilePhysical(position.x + nextMove.x, position.y + nextMove.y);
			}
		}
		else
		{
			isEmpty = !scene_->isTilePhysical(position.x + nextMove.x, position.y + nextMove.y);
		}


		if (isEmpty)
			newNextMove = nextMove;
		else
		{

			addPair(collisions, entity, position.x + nextMove.x, position.y + nextMove.y);
		}
	}

	addPair(collisions, entity, position.x + newNextMove.x, position.y + newNextMove.y);

	

	//entity->setNextMove(newNextMove);


	entity->setNextMove(newNextMove);
}



void Physics::addPair(std::list<StaticPair>& collisions, Entity * entity, int tileX, int tileY)
{
	Tile* tile = scene_->getTile(tileX, tileY);

	if (tile != nullptr)
	{
		collisions.push_back(StaticPair(entity, tile));

		//std::cout << "COLLISION!" << std::endl;

		StaticCollision event(entity, tile);
		sendEvent(&event);
	}

}
