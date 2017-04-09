#include "Tile.h"

#include "DataTables.h"

namespace
{
	const std::array<TileTable, Tile::TypeCount> Table = initializeTileData();
}


Tile::Tile(Stage * stage, Type type, int x, int y) :
	GameObject(stage),
	isPhysical_(Table[type].isPhysical),
	type_(type)
{
	setTexture(Table[type].texture);
	

	setPosition(x, y);
}

Tile::~Tile()
{
}


void Tile::update(sf::Time dt)
{
	if(getStage()->getFrameNumber() % 12 == 0)
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

