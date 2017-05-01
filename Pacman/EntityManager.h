#pragma once

#include <map>
#include "World.h"

#include "sol.hpp"

class EntityManager
{
public:
	EntityManager(World* world);


	Tile* createTile(std::string tileName);
	Entity* createEntity(std::string entityName);


	~EntityManager();

private:
	sol::state lua_;
	World* world_;
	std::map<std::string, Tile*> tileTemplates_;
	std::map<std::string, Entity*> entityTemplates_;



	void addTile(std::string name, sol::table data);
	void addEntity(std::string name, sol::table data);

};

