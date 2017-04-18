#include "Tile.h"

#include "DataTables.h"

namespace
{
	const std::array<TileTable, Tile::TypeCount> Table = initializeTileData();
}


Tile::Tile(GameSystems* systems, Type type, int x, int y) :
	GameObject(systems),
	isPhysical_(Table[type].isPhysical),
	type_(type)
{
	setTexture(Table[type].texture);
	

	setPosition(x, y);
}

Tile::~Tile()
{
}


void Tile::update(unsigned long frameNumber)
{
	if(frameNumber % 12 == 0)
		setTexture(Table[type_].texture);
}

bool Tile::isPhysical()
{
	return isPhysical_;
}

void Tile::setPhysical(bool physical)
{
	isPhysical_ = physical;
}

Tile::Type Tile::getType()
{
	return type_;
}

