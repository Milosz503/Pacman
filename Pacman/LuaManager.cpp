#include "LuaManager.h"
#include <iostream>

#include "LuaObjectHandle.h"
#include "LuaGameHandle.h"
#include "World.h"

LuaManager::LuaManager(World* world) :
	world_(world)
{

	lua_.open_libraries(sol::lib::base, sol::lib::math, sol::lib::package, sol::lib::table, sol::lib::io, sol::lib::string);

	lua_["errorHandler"].set_function([](std::string err) {
		std::cout << "Error calling lua function: " + err << std::endl;
		return err;
	});

	
	initTypes();

	lua_["world"] = LuaGameHandle(world);

	includeScripts();

	try {
		sol::table luaGame = lua_["Game"];
		luaGame["init"]();
	}
	catch (sol::error e) {
		std::cout << "Error init lua game: " << e.what() << std::endl;
	}

	

}


LuaManager::~LuaManager()
{
	
}

void LuaManager::init()
{
	loadLevel(world_->getLevelFile());
}



sol::state & LuaManager::getLua()
{
	return lua_;
}


void LuaManager::loadScript(std::string fileName)
{
	try {
		lua_.script_file(fileName);
	}
	catch (sol::error e)
	{
		std::cout << "Error loading script " << fileName << " :" << e.what() << std::endl;
	}
}

void LuaManager::saveLevel(std::string fileName)
{
	try {
		sol::table levelManager = lua_["LevelManager"];
		auto result = levelManager["saveLevel"](fileName);
	}
	catch (sol::error e) {
		std::cout << "Error saving level " << fileName << " :" << e.what() << std::endl;
	}
}

void LuaManager::loadLevel(std::string fileName)
{
	try {
		sol::table luaLevel = lua_["LevelManager"];
		luaLevel["loadLevel"](fileName);
	}
	catch (sol::error e) {
		std::cout << "Error loading level: " << e.what() << std::endl;
	}
}

void LuaManager::initTypes()
{
	lua_.new_usertype<LuaObjectHandle>("LuaObjectHandle",
		"x", sol::property(&LuaObjectHandle::getX),
		"y", sol::property(&LuaObjectHandle::getY),
		"name", sol::property(&LuaObjectHandle::getName, &LuaObjectHandle::setName),
		"type", sol::property(&LuaObjectHandle::getType),
		"category", sol::property(&LuaObjectHandle::getCategory),
		"setColor", &LuaObjectHandle::setColor,
		"setTexture", &LuaObjectHandle::setTexture,
		"setSpeed", &LuaObjectHandle::setSpeed,
		"setPosition", &LuaObjectHandle::setPosition,
		"getPosition", &LuaObjectHandle::getPosition,
		"setPhysical", & LuaObjectHandle::setPhysical,
		"getSpeed", &LuaObjectHandle::getSpeed,
		"defaultSpeed", sol::property(&LuaObjectHandle::getDefaultSpeed, &LuaObjectHandle::setDefaultSpeed),
		"guideToPlayer", &LuaObjectHandle::guideToPlayer,
		"guideToPath", &LuaObjectHandle::guideToPath,
		"guideToDirection", &LuaObjectHandle::guideToDirection,
		"guidePriority", sol::property(&LuaObjectHandle::setGuidePriority),
		"canMoveBack", sol::property(&LuaObjectHandle::setCanMoveBack),
		"remove", &LuaObjectHandle::remove,
		"self", sol::property(&LuaObjectHandle::getLuaInstance)

		);

	lua_.new_usertype<LuaGameHandle>("LuaGameHandle",
		"score", sol::property(&LuaGameHandle::getScore),
		"addScore", &LuaGameHandle::addScore,
		"lives", sol::property(&LuaGameHandle::getLives),
		"addLive", &LuaGameHandle::addLive,
		"addLives", &LuaGameHandle::addLives,
		"removeLive", &LuaGameHandle::removeLive,
		"getTile", &LuaGameHandle::getTile,
		"findEntity", &LuaGameHandle::findEntity,
		"getPlayer", &LuaGameHandle::getPlayer,
		"removeTile", &LuaGameHandle::removeTile,
		"removeObject", &LuaGameHandle::removeObject,
		"getDistance", &LuaGameHandle::getDistance,
		"removeEntities", &LuaGameHandle::removeEntities,
		"removeTiles", &LuaGameHandle::removeTiles,
		"getTime", &LuaGameHandle::getTime,
		"createEntityHandle", &LuaGameHandle::createEntityHandle,
		"createTileHandle", &LuaGameHandle::createTileHandle,
		"setSize", &LuaGameHandle::setSize,
		"width", sol::property(&LuaGameHandle::getWidth),
		"height", sol::property(&LuaGameHandle::getHeight)
		);

	lua_.new_usertype<sf::Vector2i>("Vector2i",
		sol::constructors<sf::Vector2i(), sf::Vector2i(int, int)>(),
		"x", &sf::Vector2i::x,
		"y", &sf::Vector2i::y

		);

	lua_.new_usertype<NodeCost>("NodeCost",
		sol::constructors<NodeCost(int, int)>(),
		"x", &NodeCost::x,
		"y", &NodeCost::y,
		"cost", &NodeCost::cost
		);
}

void LuaManager::includeScripts()
{
	loadScript("data/entities.lua");
	loadScript("data/level_logic.lua");
	loadScript("data/new_lua/Game.lua");
	loadScript("data/new_lua/LevelManager.lua");


}
