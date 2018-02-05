#include "LuaManager.h"
#include <iostream>

#include "LuaObjectHandle.h"
#include "LuaGameHandle.h"


LuaManager::LuaManager(World* world)
{

	lua_.open_libraries(sol::lib::base, sol::lib::math, sol::lib::package);

	lua_["errorHandler"].set_function([](std::string err) {
		std::cout << "Error calling lua function: " + err << std::endl;
		return err;
	});
	//sol::protected_function::set_default_handler(lua_["errorHandler"]);

	
	initTypes();

	lua_["world"] = LuaGameHandle(world);

	includeScripts();

	

}


LuaManager::~LuaManager()
{
}

sol::state & LuaManager::getLua()
{
	return lua_;
}

sol::table LuaManager::createProperties(sol::object object, sol::table properties)
{
	auto result = createPropertiesLua(object, properties);

	if (result.valid())
	{
		return result;
	}
	sol::error e = result;
	std::cout << "Error creating properties " << e.what() << std::endl;

	return properties;
}

void LuaManager::loadScript(std::string fileName)
{
	auto result = lua_.script_file(fileName);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading script: " << e.what() << std::endl;
		return;
	}
}

void LuaManager::initTypes()
{
	lua_.new_usertype<LuaObjectHandle>("LuaObjectHandle",
		"x", sol::property(&LuaObjectHandle::getX),
		"y", sol::property(&LuaObjectHandle::getY),
		"name", sol::property(&LuaObjectHandle::getName),
		"type", sol::property(&LuaObjectHandle::getType),
		"category", sol::property(&LuaObjectHandle::getCategory),
		"setColor", &LuaObjectHandle::setColor,
		"setTexture", &LuaObjectHandle::setTexture,
		"setSpeed", &LuaObjectHandle::setSpeed,
		"getSpeed", &LuaObjectHandle::getSpeed,
		"defaultSpeed", sol::property(&LuaObjectHandle::getDefaultSpeed, &LuaObjectHandle::setDefaultSpeed),
		"hp", sol::property(&LuaObjectHandle::getHp),
		"heal", &LuaObjectHandle::heal,
		"damage", &LuaObjectHandle::damage,
		"guideTo", sol::overload(&LuaObjectHandle::guideTo, &LuaObjectHandle::guideToPos),
		"getDestination", &LuaObjectHandle::getDestination,
		"isGuided", &LuaObjectHandle::isGuided,
		"setGuideType", &LuaObjectHandle::setGuideType,
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
		"spawnEntities", &LuaGameHandle::spawnEntities,
		"getTime", &LuaGameHandle::getTime
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


	

	createPropertiesLua = lua_.script(R"(
		return function(object, properties)
			properties = properties or {}
			mt = {__index={}}
			if object.getProperties ~= nil then mt.__index = object.getProperties() end
			setmetatable(properties, mt)
			return properties
		end
	)");
}
