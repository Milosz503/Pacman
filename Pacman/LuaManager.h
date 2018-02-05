#pragma once

#include "sol.hpp"
#include "LuaObjectHandle.h"
#include "LuaGameHandle.h"

class World;
class LuaManager
{
public:

	LuaManager(World* world);
	~LuaManager();

	sol::state& getLua();
	sol::table createProperties(sol::object object, sol::table properties);

	void loadScript(std::string fileName);

private:

	sol::state lua_;

	sol::protected_function createPropertiesLua;

	void initTypes();
	void includeScripts();
};
