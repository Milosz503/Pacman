#include "Entity.h"

#include "DataTables.h"

namespace
{
	const std::array<EntityTable, Entity::TypeCount> Table = initializeEntityData();
}


Entity::Entity(GameSystems* systems, Type type, int x, int y) :
	GameObject(systems),
	type_(type),
	nextMove_(0, 0),
	speed_(0, 0),
	defaultSpeed_(Table[type].speed),
	visionRange_(Table[type].visionRange),
	hitpoints_(Table[type].hitpoints),
	isVulnerable_(Table[type].isVulnerable),
	animations_(this, Table[type].animations),
	teleported_(false)
	
{
	setPosition(x, y);
	setTexture(Table[type].texture);


}

void Entity::update(unsigned long frameNumber)
{
	move(nextMove_);
	if (teleported_ && nextMove_ != sf::Vector2i(0, 0))
	{
		teleported_ = false;
	}
	nextMove_.x = 0;
	nextMove_.y = 0;

	if (defaultSpeed_ != 0 && frameNumber % defaultSpeed_ == 0)
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

	if (vulnerbailityTimer_ == frameNumber)
	{
		isVulnerable_ = Table[type_].isVulnerable;
		
		if (isVulnerable_)
			animations_.play(Animation::Vulnerable);
		else
			animations_.play(Animation::Invulnerable);

	}


	//if (isVulnerable_ != Table[type_].isVulnerable)
	//{
	//	setTexture(Table[type_].secondTexture);
	//}
	//else
	//{
	//	setTexture(Table[type_].texture);
	//
	//}

	animations_.update(frameNumber);
	




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

void Entity::setNextMove(sf::Vector2i nextMove)
{
	nextMove_ = nextMove;
}

sf::Vector2i Entity::getNextPosition()
{
	return getPosition() + nextMove_;
}

Entity::Type Entity::getType()
{
	return type_;
}

int Entity::getHitpoints()
{
	return hitpoints_;
}

void Entity::setHitpoints(int hitpoints)
{
	hitpoints_ = hitpoints;
}

bool Entity::isVulnerable()
{
	return isVulnerable_;
}

void Entity::setVulnerability(bool isVulnerable, int frames)
{
	if (frames != -1)
		vulnerbailityTimer_ = getSystems()->frameSystem->getFrameNumber() + frames;

	isVulnerable_ = isVulnerable;

	if (isVulnerable_)
		animations_.play(Animation::Vulnerable);
	else
		animations_.play(Animation::Invulnerable);
}

bool Entity::isReadyToMove()
{
	return getSystems()->frameSystem->getFrameNumber() % defaultSpeed_ == 0;
}

void Entity::teleport(sf::Vector2i location)
{
	if (teleported_ == false)
	{
		setPosition(location);
		teleported_ = true;
	}
}

Entity::~Entity()
{
}
