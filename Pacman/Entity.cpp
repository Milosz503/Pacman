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
	teleported_(false),
	customWages_(nullptr),
	isGuided_(false),
	destination_(nullptr)
	
{
	int speed = data["speed"].get_or(20);

	setDefaultSpeed(speed);


}

void Entity::update()
{
	

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
		GameObject::update();
		if (!path_.empty())
		{
			speed_ = path_.front();
			path_.pop_front();

		}
		else if(isGuided_)
		{
			//speed_.x = 0;
			//speed_.y = 0;
		}

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

void Entity::draw()
{
	return;

	ConsoleCharacter character;
	character.setTexture(TextureManager::getTexture(L'.', CharacterColor::Red));

	sf::Vector2i pos = getPosition()+getNextMove();

	for (auto& node : path_)
	{
		pos += node;
		pos = getWorld()->getScene()->normalize(pos);
		character.setPosition(pos);

		getWorld()->getConsole()->draw(character);
	}

	character.setPosition(destinationPos_);
	getWorld()->getConsole()->draw(character);
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

void Entity::setPath(std::list<sf::Vector2i>& path, sf::Vector2i pathDestination)
{
	std::cout << "Set path" << std::endl;
	path_ = path;
	pathDestination_ = pathDestination;
}

bool Entity::isPathEmpty()
{
	return path_.empty();
}

int Entity::getPathSize()
{
	return path_.size();
}

sf::Vector2i Entity::getPathDestination()
{
	return pathDestination_;
}

bool Entity::isGuided()
{
	return isGuided_;
}

void Entity::guideTo(GameObject * destination, sol::protected_function customWages)
{
	if (destination_ != destination)
	{
		isGuided_ = true;
		destination_ = destination;
		path_.clear();
		if (customWages.valid())
			customWages_ = new sol::protected_function(customWages);
		else
			customWages_ = nullptr;
	}
	
}

void Entity::guideTo(sf::Vector2i destination)
{
	isGuided_ = true;
	if (destinationPos_ != destination || destination_ != nullptr)
	{
		destination_ = nullptr;
		destinationPos_ = destination;

		path_.clear();
		customWages_ = nullptr;
	}
}

void Entity::guideTo(GameObject * destination)
{
	if (destination_ != destination)
	{
		isGuided_ = true;
		destination_ = destination;
		path_.clear();
		customWages_ = nullptr;
	}
}

void Entity::stopGuide()
{
	isGuided_ = false;
	destination_ = nullptr;
	path_.clear();
	customWages_ = nullptr;
}

GameObject * Entity::getDestination()
{
	return destination_;
}

bool Entity::isGoalMoving()
{
	if (destination_ == nullptr)
		return false;

	if (destination_->getType() == GameObject::Tile)
		return false;

	return true;
}

sf::Vector2i Entity::getGoal()
{
	std::cout << "return: ";
	if (destination_ != nullptr)
	{
		if (destination_->getType() == GameObject::Entity)
		{
			Entity* e = static_cast<Entity*>(destination_);
			return e->getPosition() + e->getNextMove();
		}
		else
		{
			return destination_->getPosition();
		}
		
	}
	else
	{
		std::cout  << destinationPos_.x << " " << destinationPos_.y << std::endl;
		return destinationPos_;
	}
	return destinationPos_;
}

std::string Entity::getGuideType()
{
	return guideType_;
}

void Entity::setGuideType(std::string type)
{
	guideType_ = type;
}

std::vector<NodeCost> Entity::getWages()
{
	std::vector<NodeCost> nodes;

	if (customWages_ != nullptr)
	{
		auto result = (*customWages_)(nodes);
		if (!result.valid())
		{
			sol::error e = result;
			std::cout << "Error function custom costs: " << e.what() << std::endl;
		}
	}
		

	return nodes;
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
