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
	if (entity->getCategory() == "ghost" && entity->isGuided() && entity->isReadyToMove())
	{
		entity->framesSinceLastUpdate++;
	
		

		sf::Vector2i destination = entity->getDestination();
		sf::Vector2i start = entity->getPosition();
		sf::Vector2i lastPosition = entity->getPosition() - entity->getSpeed();
		GuideType guideType = entity->getGuideType();

		std::cout << "Start: " << start.x << " " << start.y << " last: " << lastPosition.x << " " << lastPosition.y << std::endl;

		//init finder
		finder_.init(start, destination, lastPosition);
		finder_.setCanMoveBack(entity->canMoveBack);
		if (guideType == GuideType::PathToPlayer)
		{
			Entity* player = scene_->getPlayer();
			if (player)
			{
				finder_.setPlayerFront(player->getPosition() + player->getSpeed(), entity->getPlayerFrontCost());
				finder_.setPlayerBack(player->getPosition() - player->getSpeed(), entity->getPlayerBackCost());
			}
			
		}

		std::cout << "destination: " << destination.x << " " << destination.y << std::endl;

		//guide to
		if (guideType == GuideType::DirectionToTile) //direction
		{
			//std::cout << "dir: " << std::endl;
			sf::Vector2i dir = finder_.findDirection();
			entity->setSpeed((Direction::X)(dir.x), (Direction::Y)(dir.y));

			
		}
		else if(entity->framesSinceLastUpdate >= entity->priority || entity->isPathEmpty()) //path
		{

			entity->framesSinceLastUpdate = 0;

			//std::cout << "a_star: " << std::endl;
			std::vector<sf::Vector2i>& path = finder_.findPath();
			if (path.size() > 0)
			{
				entity->setPath(std::list<sf::Vector2i>(path.begin(), path.end()), destination);
			}
		}

		//move entity with path
		if (entity->isReadyToMove() && !entity->isPathEmpty())
		{
			auto& path = entity->getPath();
			entity->setSpeed((Direction::X)path.front().x, (Direction::Y)path.front().y);
			path.pop_front();
		}

	

	}
}



void EntityController::draw()
{
	
	//ConsoleCharacter character(TextureManager::getTexture(L'*', CharacterColor::Red));

	//character.setPosition(goal_);
	////getWorld()->getConsole()->draw(character);

	//character.setPosition(start_);
	//character.setTexture(TextureManager::getTexture(L's', CharacterColor::Grey));
	////getWorld()->getConsole()->draw(character);


	//character.setPosition(lastPosition_);
	//character.setTexture(TextureManager::getTexture(L'l', CharacterColor::White));
	////getWorld()->getConsole()->draw(character);

	//
}

EntityController::~EntityController()
{
}

