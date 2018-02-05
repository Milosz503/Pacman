#pragma once

#include "sol.hpp"

class World;
class LuaManager
{
public:

	LuaManager(World* world);
	~LuaManager();

	sol::state& getLua();
	sol::table createProperties(sol::object object, sol::table properties);

private:

	sol::state lua_;

	sol::protected_function createPropertiesLua;

	void initTypes();
	void includeScripts();
};

