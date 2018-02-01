#include "EntityController.h"
#include "World.h"
#include "ConsoleWindow.h"
#include <forward_list>
#include <limits>


EntityController::EntityController(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	scene_(world->getScene()),
	finder_(scene_)
{
	
}

void EntityController::update()
{
	std::vector<Entity*> entities = scene_->getEntities();

	for (auto& e : entities)
	{
		update(e);
	}
}




void EntityController::update(Entity * entity)
{
	if (entity->getCategory() == "ghost" && entity->isGuided() && entity->isPathEmpty() && entity->isReadyToMove())// || entity->getType() == Entity::SlowGhost) && entity->isReadyToMove())
	{
		

		sf::Vector2i destination = entity->getGoal();
		
		

		sf::Vector2i start = entity->getPosition() + entity->getNextMove();

		sf::Vector2i lastPosition = entity->getPosition() - entity->getSpeed();

		std::string guideType = entity->getGuideType();



		lastPosition_ = lastPosition;
		goal_ = destination;
		start_ = start;


		std::cout << "destination: " << destination.x << " " << destination.y << std::endl;

		if (guideType == A_STAR)
		{
			std::vector<sf::Vector2i>& path = finder_.findPath(start, destination, lastPosition);
			if (path.size() > 0)
			{
				entity->setPath(std::list<sf::Vector2i>(path.begin(), path.end()), destination);
			}
		}
		else if(guideType == DIRECTION)
		{
			sf::Vector2i dir = finder_.findDirectionTo(start, destination, lastPosition);
			entity->setSpeed((Direction::X)(dir.x), (Direction::Y)(dir.y));
		}
		else
		{
			std::cout << "UNKNOWN guide type! " << entity->getName() << std::endl;

			sf::Vector2i dir = finder_.findDirectionTo(start, destination, lastPosition);
			entity->setSpeed((Direction::X)(dir.x), (Direction::Y)(dir.y));
		}


		return;

	

	}
}



void EntityController::draw()
{
	
	ConsoleCharacter character(TextureManager::getTexture(L'*', CharacterColor::Red));

	character.setPosition(goal_);
	//getWorld()->getConsole()->draw(character);

	character.setPosition(start_);
	character.setTexture(TextureManager::getTexture(L's', CharacterColor::Grey));
	//getWorld()->getConsole()->draw(character);


	character.setPosition(lastPosition_);
	character.setTexture(TextureManager::getTexture(L'l', CharacterColor::White));
	//getWorld()->getConsole()->draw(character);

	
}

EntityController::~EntityController()
{
}

