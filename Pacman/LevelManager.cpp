#include "LevelManager.h"
#include "Scene.h"
#include "EntityManager.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

#include "sol.hpp"

using namespace luabridge;

LevelManager::LevelManager()
	
{
}



void LevelManager::loadLevel(Scene * scene, EntityManager* entityManager, std::string fileName)
{
	
	sol::state lua;
	lua.open_libraries(sol::lib::base);
	auto result = lua.script_file(fileName, &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading level: " << e.what() << std::endl;
		return;
	}

	sol::table level = lua["level"];
	sol::table tiles = lua["tiles"];

	if (!level.valid() || !tiles.valid())
	{
		std::cout << "Error loading level or tiles!" << std::endl;
		return;
	}

	int width = level["width"].get_or(0);
	int height = level["height"].get_or(0);

	scene->setSize(width, height);



	for (int y = 1; y <= height; ++y)
	{
		sol::table row = level[y];
		if (!level.valid())
		{
			std::cout << "Error parsing level! y = " << y << std::endl;
			return;
		}

		for (int x = 1; x <= width; ++x)
		{
			int tileID = row[x].get_or(0);

			sol::table tileData = tiles[tileID];
			if (tileData.valid())
			{
				sol::optional<std::string> tileName = tileData["name"];
				if (tileName)
				{
					scene->addTile(tileName.value(), x - 1, y - 1);
				}
			}

		}
	}

	sol::table objects = lua["objects"];

	if (!objects.valid())
	{
		std::cout << "Error loading objects!" << std::endl;
	}
	else
	{
		for (auto& cell : objects)
		{

			if (cell.second.get_type() == sol::type::table)
			{
				sol::table object = cell.second;

				sol::optional<std::string> name = object["name"];
				if (name)
				{
					int x = object["x"].get_or(0);
					int y = object["y"].get_or(0);

					Entity* entity = entityManager->createEntity(name.value());
					entity->setPosition(x, y);

					scene->addEntity(entity);
				}
				else
				{
					std::cout << "Object doesn't have a name!" << std::endl;
				}
			}
			else
			{
				std::cout << "Object isn't a table!" << std::endl;
			}
			

			
		}
	}




}

static bool generateFile(lua_State* L, std::string fileName, std::vector<std::pair<std::string, LuaRef>>& data)
{
	if (luaL_dofile(L, "data/scripts/data_generator.lua") != 0)
	{
		std::cout << "ERROR dofile data/scripts/data_generator.lua! " << lua_tostring(L, -1) << std::endl;
		return false;
	}

	lua_pcall(L, 0, 0, 0);

	LuaRef generator = getGlobal(L, "generator");

	if (generator.isNil() || !generator["openFile"].isFunction() ||
		!generator["generate"].isFunction() || !generator["closeFile"].isFunction())
	{
		std::cout << "ERROR file generator! " << lua_tostring(L, -1) << std::endl;
		return false;
	}

	generator["openFile"](fileName);

	for (auto& pair : data)
	{
		generator["generate"](pair.first.c_str(), pair.second);
	}

	
	generator["closeFile"]();

	return true;
}

static void fillLevelTable(lua_State* L, Scene * scene, LuaRef& level)
{

	int width = scene->getWidth();
	int height = scene->getHeight();

	level["width"] = width;
	level["height"] = height;





	for (int y = 1; y <= height; ++y)
	{
		LuaRef row = newTable(L);

		for (int x = 1; x <= width; ++x)
		{
			Tile* tile = scene->getTile(x - 1, y - 1);

			if (tile != nullptr)
			{
				row[x] = 1;
			}
			else
			{
				row[x] = 0;
			}

		}
		level[y] = row;
	}
}


void LevelManager::saveLevel(Scene * scene, std::string fileName)
{
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	


	LuaRef level = newTable(L);
	fillLevelTable(L, scene, level);


	LuaRef tiles = newTable(L);



	

	if (luaL_dofile(L, "data/scripts/data_generator.lua") != 0)
	{
		std::cout << "ERROR dofile data/scripts/data_generator.lua! " << lua_tostring(L, -1) << std::endl;
		return;
	}

	lua_pcall(L, 0, 0, 0);

	LuaRef generator = getGlobal(L, "generator");

	if (generator.isNil() || !generator["openFile"].isFunction() ||
		!generator["generate"].isFunction() || !generator["closeFile"].isFunction())
	{
		std::cout << "ERROR file generator! " << lua_tostring(L, -1) << std::endl;
		return;
	}

	generator["openFile"](fileName);

	generator["generate"]("level", level);

	generator["closeFile"]();


}

LevelManager::~LevelManager()
{
}

