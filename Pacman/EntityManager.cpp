#include "EntityManager.h"
#include "LuaObjectHandle.h"

#include "TextureManager.h"




EntityManager::EntityManager(World* world) :
	world_(world)
{
	sol::state& lua = world->getLua();

	sol::table tiles = lua["tiles"];
	if (!tiles.valid())
	{
		std::cout << "Error parsing tiles: " << std::endl;
		return;
	}

	sol::table entities = lua["entities"];
	if (!entities.valid())
	{
		std::cout << "Error parsing entities: " << std::endl;
		return;
	}

	for (auto& tilePair : tiles)
	{
		if (tilePair.first.get_type() == sol::type::string && tilePair.second.get_type() == sol::type::table)
		{
			std::string name = tilePair.first.as<std::string>();

			addTile(name, tilePair.second);
		}
		else
		{
			std::cout << "Error parsing tile" << std::endl;
		}
	}


	for (auto& entityPair : entities)
	{
		if (entityPair.first.get_type() == sol::type::string && entityPair.second.get_type() == sol::type::table)
		{
			std::string name = entityPair.first.as<std::string>();

			addEntity(name, entityPair.second);
		}
		else
		{
			std::cout << "Error parsing entity" << std::endl;
		}
	}

}

void EntityManager::addTile(std::string name, sol::table data)
{
	std::string category = data["category"].get_or<std::string>("none");


	Tile* tile = new Tile(world_, data);
	tile->setName(name);


	tileTemplates_.insert(std::pair<std::string, Tile*>(name, tile));
}

void EntityManager::addEntity(std::string name, sol::table data)
{
	std::string category = data["category"].get_or<std::string>("none");


	Entity* entity = new Entity(world_, data);
	entity->setName(name);

	entityTemplates_.insert(std::pair<std::string, Entity*>(name, entity));

}

Tile * EntityManager::createTile(std::string tileName)
{

	try
	{
		return new Tile(*tileTemplates_.at(tileName));
	}
	catch (std::out_of_range& e)
	{
		throw std::runtime_error(tileName + " tile doesn't exist");
	}
	return nullptr;
}

Entity * EntityManager::createEntity(std::string entityName)
{

	try
	{
		return new Entity(*entityTemplates_.at(entityName));
	}
	catch (std::out_of_range& e)
	{
		throw std::runtime_error(entityName + " entity doesn't exist");
	}
	return nullptr;


	
}



EntityManager::~EntityManager()
{
}
