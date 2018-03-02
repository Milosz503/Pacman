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

	void init();


	sol::state& getLua();

	void loadScript(std::string fileName);
	void saveLevel(std::string fileName);
	void loadLevel(std::string fileName);

private:

	const std::string PATH_TO_LEVEL = "data/levels/";

	sol::state lua_;
	World* world_;

	void initTypes();
	void includeScripts();
};

