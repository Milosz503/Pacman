#include "Tile.h"

#include "DataTables.h"
#include "World.h"

namespace
{
	const std::array<TileTable, Tile::TypeCount> Table = initializeTileData();
}


Tile::Tile(World* world, Type type, int x, int y) :
	GameObject(world),
	isPhysical_(Table[type].isPhysical),
	type_(type)
{
	setTexture(Table[type].texture);
	

	setPosition(x, y);
}

Tile::~Tile()
{
}


void Tile::update()
{
	unsigned long long frameNumber = getWorld()->getFrameNumber();

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

