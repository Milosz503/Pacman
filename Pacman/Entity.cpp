#include "Entity.h"

#include "World.h"




Entity::Entity(World* world, sol::table& data) :
	GameObject(world, GameObject::Entity, data),
	nextMove_(0, 0),
	speed_(0, 0),
	defaultSpeed_(20),
	guideType_(GuideType::None),
	playerFrontCost_(1),
	playerBackCost_(1)
	
{
	int speed = data["speed"].get_or(20);

	setDefaultSpeed(speed);


}

void Entity::update()
{
	

	//unsigned long long frameNumber = getWorld()->getFrameNumber();
	////getWorld()->getScene()->moveEntity(this, nextMove_);


	////nextMove_.x = 0;
	////nextMove_.y = 0;

	//if (defaultSpeed_ != 0 && frameNumber % defaultSpeed_ == 0)
	//{
	//	GameObject::update();
	//	if (!path_.empty())
	//	{
	//		speed_ = path_.front();
	//		path_.pop_front();

	//	}

	//	//if (speed_.x != 0)
	//	//{
	//	//	nextMove_.x += speed_.x;
	//	//}
	//	//if (speed_.y != 0)
	//	//{
	//	//	nextMove_.y += speed_.y;
	//	//}

	//	

	//	
	//}

	




}

void Entity::draw()
{


	ConsoleCharacter character;
	character.setTexture(TextureManager::getTexture(L'.', CharacterColor::Red));

	sf::Vector2i pos = getPosition()+getNextMove();
	bool first = true;
	for (auto& node : path_)
	{
		if (first)
		{
			first = false;
			continue;
		}
		pos += node;
		pos = getWorld()->getScene()->normalize(pos);
		character.setPosition(pos);

		getWorld()->getConsole()->draw(character);
	}

	character.setPosition(destination_);
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
	if(getName() != "Player")
		std::cout << "speed: " << speed_.x << " " << speed_.y << std::endl;
	return speed_;
}

void Entity::setPath(std::list<sf::Vector2i>& path, sf::Vector2i pathDestination)
{
	//std::cout << "Set path" << std::endl;
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

std::list<sf::Vector2i>& Entity::getPath()
{
	return path_;
}

sf::Vector2i Entity::getPathDestination()
{
	return pathDestination_;
}

bool Entity::isGuided()
{
	return guideType_ != GuideType::None;
}


void Entity::stopGuide()
{
	guideType_ = GuideType::None;
	path_.clear();
}


sf::Vector2i Entity::getDestination()
{
	if (guideType_ == GuideType::PathToPlayer)
	{
		Entity* player = getWorld()->getScene()->getPlayer();
		if (player)
			return player->getPosition();
	}
	return destination_;
}

GuideType Entity::getGuideType()
{
	return guideType_;
}

int Entity::getPlayerFrontCost()
{
	return playerFrontCost_;
}

int Entity::getPlayerBackCost()
{
	return playerBackCost_;
}

void Entity::guideToPlayer(int frontCost, int backCost)
{
	guideType_ = GuideType::PathToPlayer;
	playerFrontCost_ = frontCost;
	playerBackCost_ = backCost;

	path_.clear();

}

void Entity::guideToPath(int x, int y)
{
	guideType_ = GuideType::PathToTile;
	destination_.x = x;
	destination_.y = y;

	path_.clear();
}

void Entity::guideToDirection(int x, int y)
{
	guideType_ = GuideType::DirectionToTile;
	destination_.x = x;
	destination_.y = y;

	path_.clear();
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





bool Entity::isReadyToMove()
{
	if (defaultSpeed_ == 0) return false;
	return getWorld()->getFrameNumber() % defaultSpeed_ == 0;
}



Entity::~Entity()
{
}
