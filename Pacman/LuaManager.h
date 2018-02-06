#pragma once

#include "sol.hpp"
#include "LuaObjectHandle.h"
#include "LuaGameHandle.h"
#include "GameObject.h"

class World;
class LuaManager
{
public:

	LuaManager(World* world);
	~LuaManager();


	sol::state& getLua();

	void loadScript(std::string fileName);
	void saveLevel(std::string fileName);

private:

	sol::state lua_;


	void initTypes();
	void includeScripts();
};

