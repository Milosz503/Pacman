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

	//const std::map<std::string, Tile*>& getTiles();
	//const std::map<std::string, Entity*>& getEntities();


	~EntityManager();

private:
	World* world_;
	std::map<std::string, Tile*> tileTemplates_;

	std::map<std::string, Entity*> entityTemplates_;






	void addTile(std::string name, sol::table data);
	void addEntity(std::string name, sol::table data);

};

