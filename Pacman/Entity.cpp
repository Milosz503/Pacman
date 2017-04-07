#include "Entity.h"

#include "DataTables.h"

namespace
{
	const std::array<EntityTable, Entity::TypeCount> Table = initializeEntityData();
}


Entity::Entity(Stage * stage, Type type, int x, int y) :
	GameObject(stage),
	type_(type),
	nextMove_(0, 0),
	speed_(0, 0),
	defaultSpeed_(Table[type].speed),
	visionRange_(Table[type].visionRange)
	
{
	setPosition(x, y);
	setTexture(stage->getTextureManager()->getTexture(Table[type].texture));
}

void Entity::update(sf::Time dt)
{
	move(nextMove_);
	nextMove_.x = 0;
	nextMove_.y = 0;

	if (defaultSpeed_ != 0 && getStage()->getFrameNumber() % defaultSpeed_ == 0)
	{
		if (speed_.x != 0)
		{
			nextMove_.x += speed_.x;
		}
		if (speed_.y != 0)
		{
			nextMove_.y += speed_.y;
		}
	}
	




}

void Entity::setSpeed(DirectionX::Move x, DirectionY::Move y)
{
	speed_.x = x;
	speed_.y = y;
}

sf::Vector2i Entity::getSpeed()
{
	return speed_;
}

sf::Vector2i Entity::getNextMove()
{
	return nextMove_;
}

void Entity::getNextMove(sf::Vector2i nextMove)
{
	nextMove_ = nextMove;
}

Entity::~Entity()
{
}
