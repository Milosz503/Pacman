#pragma once

#include "System.h"
#include "LuaManager.h"

class World;

class LuaSystem : public System
{
public:
	LuaSystem(SystemManager* systemManager, World* world);
	~LuaSystem();

	virtual void update() override;
	

private:
	
	LuaManager & luaManager_;

	sol::protected_function updateLua_;
	sol::protected_function collisionLua_;
	sol::protected_function onRemoveLua_;

	virtual void onEvent(SystemEvent* event) override;
	void checkResult(sol::protected_function_result res);
};

