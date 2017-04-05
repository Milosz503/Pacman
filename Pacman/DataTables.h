#pragma once


#include <array>

#include "TextureManager.h"
#include "Tile.h"
#include "Entity.h"




struct TileTable
{
	TextureCharacter texture;
	sf::Color backgroundColor;

	bool isPhysical;
};


struct EntityTable
{
	unsigned speed;
	unsigned visionRange;

	TextureCharacter texture;
	sf::Color backgroundColor;
};


std::array<TileTable, Tile::TypeCount> initializeTileData();
std::array<EntityTable, Entity::TypeCount> initializeEntityData();