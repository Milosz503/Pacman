#pragma once


#include <array>

#include "TextureManager.h"
#include "Tile.h"
#include "Entity.h"




namespace Category
{
	enum ID {Player, Enemy, Wall, Point};
}


struct TileTable
{
	Textures::ID texture;

	bool isPhysical;
};


struct EntityTable
{
	unsigned speed;
	unsigned visionRange;

	Textures::ID texture;


};


std::array<TileTable, Tile::TypeCount> initializeTileData();
std::array<EntityTable, Entity::TypeCount> initializeEntityData();