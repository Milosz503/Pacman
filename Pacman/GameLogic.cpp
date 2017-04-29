#include "GameLogic.h"
#include "World.h"
#include <iostream>
#include "Teleport.h"

GameLogic::GameLogic(SystemManager * systemManager, World * world) :
	System(systemManager, world),
	scene_(world->getScene())
{
}

void GameLogic::update()
{
	std::vector<Entity*> entities = scene_->getEntities();

	for (auto& entity : entities)
	{
		Tile* tile = scene_->getTile(entity->getX(), entity->getY());

		/*if (tile != nullptr && tile->getType() == Tile::Teleport)
		{
			if (entity->isReadyToMove())
			{
				Teleport* teleport = static_cast<Teleport*>(tile);

				entity->teleport(teleport->getTeleportLocation());

			}
		}*/
	}

	

	if (sf::Keyboard::isKeyPressed(sf::Keyboard::T))
	{
		//getWorld()->getScene()->addTile(Tile::Wall,
		//	getWorld()->getScene()->getPlayer()->getX(), getWorld()->getScene()->getPlayer()->getY());
	}
	if (sf::Keyboard::isKeyPressed(sf::Keyboard::Y))
	{
		//getWorld()->getScene()->addTile(Tile::Point,
		//	getWorld()->getScene()->getPlayer()->getX(), getWorld()->getScene()->getPlayer()->getY());
	}
}

void GameLogic::onEvent(SystemEvent * event)
{

	switch (event->type)
	{
	case SystemEvent::staticCollision:
	{
		StaticCollision* collision = static_cast<StaticCollision*>(event);

		/*if (collision->tile->getType() == Tile::Point)
		{
			collision->tile->markToRemove();
			getWorld()->addScore();
		}
		else */if (sf::Keyboard::isKeyPressed(sf::Keyboard::R))
		{
			collision->tile->markToRemove();
		}

		collision->tile->collide(collision->entity);
		collision->entity->collide(collision->tile);
			

		break;
	}

	}
}

GameLogic::~GameLogic()
{
}
