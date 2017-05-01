#include "Entity.h"

#include "DataTables.h"
#include "World.h"




Entity::Entity(World* world, sol::table& data) :
	GameObject(world, GameObject::Entity, data),
	nextMove_(0, 0),
	speed_(0, 0),
	defaultSpeed_(20),
	visionRange_(5),
	hitpoints_(1),
	isVulnerable_(true),
	teleported_(false)
	
{
	int speed = data["speed"].get_or(20);

	setDefaultSpeed(speed);


}

void Entity::update()
{
	GameObject::update();

	unsigned long long frameNumber = getWorld()->getFrameNumber();
	getWorld()->getScene()->moveEntity(this, nextMove_);

	//move(nextMove_);
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

	//if (vulnerbailityTimer_ == frameNumber)
	//{
	//	isVulnerable_ = Table[type_].isVulnerable;
	//	
	//	if (isVulnerable_)
	//		animations_.play(Animation::Vulnerable);
	//	else
	//		animations_.play(Animation::Invulnerable);

	//}


	//if (isVulnerable_ != Table[type_].isVulnerable)
	//{
	//	setTexture(Table[type_].secondTexture);
	//}
	//else
	//{
	//	setTexture(Table[type_].texture);
	//
	//}

	//animations_.update(frameNumber);
	




}



void Entity::setSpeed(Direction::X x, Direction::Y y)
{
	if (x == 0)
		speed_.x = 0;
	else if (x < 0)
		speed_.x = -1;
	else
		speed_.x = 1;

	if (y == 0)
		speed_.y = 0;
	else if (y < 0)
		speed_.y = -1;
	else
		speed_.y = 1;


}

sf::Vector2i Entity::getSpeed()
{
	return speed_;
}

void Entity::setDefaultSpeed(int speed)
{
	defaultSpeed_ = speed;
}

int Entity::getDefaultSpeed()
{
	return defaultSpeed_;
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
	//if (frames != -1)
	//	vulnerbailityTimer_ = getWorld()->getFrameNumber() + frames;

	//isVulnerable_ = isVulnerable;

	//if (isVulnerable_)
	//	animations_.play(Animation::Vulnerable);
	//else
	//	animations_.play(Animation::Invulnerable);
}

bool Entity::isReadyToMove()
{
	return getWorld()->getFrameNumber() % defaultSpeed_ == 0;
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
