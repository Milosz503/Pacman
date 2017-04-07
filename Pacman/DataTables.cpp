#include "DataTables.h"

std::array<TileTable, Tile::TypeCount> initializeTileData()
{
	std::array<TileTable, Tile::TypeCount> table;

	table[Tile::Wall].texture = Textures::Wall;
	table[Tile::Wall].isPhysical = true;

	table[Tile::Border].texture = Textures::Border;
	table[Tile::Border].isPhysical = true;

	table[Tile::Point].texture = Textures::Point;
	table[Tile::Point].isPhysical = false;



	return table;
}

std::array<EntityTable, Entity::TypeCount> initializeEntityData()
{
	std::array<EntityTable, Entity::TypeCount> table;

	table[Entity::Pacman].texture = Textures::Player;
	table[Entity::Pacman].speed = 7;

	table[Entity::Ghost].texture = Textures::Bomb;
	table[Entity::Ghost].speed = 10;


	return table;
}
