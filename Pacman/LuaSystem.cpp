#include "LuaSystem.h"
#include "World.h"


LuaSystem::LuaSystem(SystemManager * systemManager, World * world) :
	System(systemManager, world),
	luaManager_(world->getLuaManager())
{
	sol::state& lua = luaManager_.getLua();

	try {

		
		sol::table luaGame = lua["Game"];

		updateLua_ = luaGame["update"];
		collisionLua_ = luaGame["collision"];
		onRemoveLua_ = luaGame["onRemove"];

	}
	catch (sol::error e) {
		std::cout << "Error loading world functions: " << e.what() << std::endl;
	}
}

LuaSystem::~LuaSystem()
{
}

void LuaSystem::update()
{
	if (updateLua_.valid())
	{
		auto result = updateLua_();

		checkResult(result);
	}
}

void LuaSystem::onEvent(SystemEvent * event)
{

	
	if (event->type == SystemEvent::onRemove)
	{
		OnRemoveEvent* e = static_cast<OnRemoveEvent*>(event);
		
		if (onRemoveLua_.valid())
		{
			auto result = onRemoveLua_(e->object->getHandle());

			checkResult(result);
		}
	}
	else if (event->type == SystemEvent::staticCollision || event->type == SystemEvent::dynamicCollision)
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

		
		
		if (collisionLua_.valid())
		{
			auto result = collisionLua_(object1->getHandle(), object2->getHandle());
			checkResult(result);
		}
	}
}

void LuaSystem::checkResult(sol::protected_function_result res)
{
	if (!res.valid())
	{
		sol::error e = res;
		std::cout << "Error in function update lua: " << e.what() << std::endl;
	}
}
