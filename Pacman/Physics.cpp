#include "Physics.h"

#include "Entity.h"

Physics::Physics(Stage* stage) :
	stage_(stage)
{
}

void Physics::update(sf::Time dt)
{
	std::vector<Entity*> entities = stage_->getEntities();

	for (auto& entity : entities)
	{
		checkCollision(entity);
	}

}


Physics::~Physics()
{
}

void Physics::checkCollision(Entity* entity)
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
		}
		else if (isEmptyY)
		{
			newNextMove.y = nextMove.y;
		}
	}
	else if(nextMove.x != 0 || nextMove.y != 0)
	{
		if (!stage_->isTileCollidable(position.x + nextMove.x, position.y + nextMove.y))
			newNextMove = nextMove;
	}

	
	entity->getNextMove(newNextMove);
}
