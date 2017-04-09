#pragma once


#include <array>
#include <map>

#include "TextureManager.h"
#include "Tile.h"
#include "Entity.h"
#include "Animation.h"




namespace Category
{
	enum ID {Player, Enemy, Wall, Point};
}



struct TileTable
{
	TextureCharacter texture;

	bool isPhysical;
};


struct EntityTable
{
	unsigned speed;
	unsigned visionRange;
	int hitpoints;
	bool isVulnerable;


	TextureCharacter texture;
	TextureCharacter secondTexture;
	std::map<Animation::ID, Animation> animations;
	

};


std::array<TileTable, Tile::TypeCount> initializeTileData();
std::array<EntityTable, Entity::TypeCount> initializeEntityData();