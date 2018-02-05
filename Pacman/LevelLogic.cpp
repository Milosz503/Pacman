#include "LevelLogic.h"
#include "World.h"


LevelLogic::LevelLogic(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	vars_(getWorld()->getLua(), sol::create),
	updateFunction_(nullptr),
	collideFunction_(nullptr)
{
	sol::state& lua = getWorld()->getLua();

	

	sol::optional<sol::protected_function> updateFunc = lua["levelLogic"]["update"];

	if (updateFunc)
	{
		updateFunction_ = std::make_unique<sol::protected_function>(updateFunc.value());
	}
	else
	{
		std::cout << "Level logic update function not loaded!" << std::endl;
	}



	sol::optional<sol::protected_function> collideFunc = lua["levelLogic"]["collide"];

	if (collideFunc)
	{
		collideFunction_ = std::make_unique<sol::protected_function>(collideFunc.value());
	}
	else
	{
		std::cout << "Level logic collide function not loaded!" << std::endl;
	}

	
	

}

void LevelLogic::update()
{
	if (updateFunction_ != nullptr)
	{
		auto result = (*updateFunction_)(vars_);

		if (!result.valid())
		{
			sol::error e = result;
			std::cout << "ERROR level update function: " << e.what() << std::endl;
		}

	}
}


LevelLogic::~LevelLogic()
{
}

void LevelLogic::onEvent(SystemEvent * event)
{
	if (event->type == SystemEvent::dynamicCollision || event->type == SystemEvent::staticCollision)
	{
		GameObject* object1;
		GameObject* object2;

		if (event->type == SystemEvent::dynamicCollision)
		{
			DynamicCollision* col = static_cast<DynamicCollision*>(event);

			object1 = col->entity1;
			object2 = col->entity2;
		}
		else
		{
			StaticCollision* col = static_cast<StaticCollision*>(event);

			object1 = col->entity;
			object2 = col->tile;
		}


		if (collideFunction_ != nullptr)
		{
			auto result = (*collideFunction_)(vars_, object1->getHandle(), object2->getHandle());

			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "ERROR level collide function: " << e.what() << std::endl;
			}
		}


	}



}
