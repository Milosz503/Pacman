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
	
	setPosition(getX(), getY() + 1);

}

void Entity::setSpeed(int x, int y)
{
	speed_.x = x;
	speed_.y = y;
}

sf::Vector2i Entity::getSpeed()
{
	return speed_;
}

Entity::~Entity()
{
}
