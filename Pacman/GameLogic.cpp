#include "GameLogic.h"
#include "World.h"
#include <iostream>


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

	}


}

void GameLogic::onEvent(SystemEvent * event)
{

	switch (event->type)
	{
	case SystemEvent::staticCollision:
	{
		StaticCollision* collision = static_cast<StaticCollision*>(event);



		collision->tile->collide(collision->entity);
		collision->entity->collide(collision->tile);
			

		break;
	}

	case SystemEvent::dynamicCollision:
	{
		DynamicCollision* collision = static_cast<DynamicCollision*>(event);

		collision->entity1->collide(collision->entity2);
		collision->entity2->collide(collision->entity1);

		std::cout << "Dynamic collision" << std::endl;

		break;
	}

	}
}

GameLogic::~GameLogic()
{
}
