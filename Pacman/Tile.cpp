#include "Tile.h"

#include "DataTables.h"

namespace
{
	const std::array<TileTable, Tile::TypeCount> Table = initializeTileData();
}


Tile::Tile(Stage * stage, Type type, int x, int y) :
	GameObject(stage)
{
	setTexture(Table[type].texture);
	setBackground(Table[type].backgroundColor);
	isPhysical_ = Table[type].isPhysical;

	setPosition(x, y);
}

Tile::~Tile()
{
}


void Tile::update(sf::Time dt)
{
}

bool Tile::isPhysical()
{
	return isPhysical_;
}

void Tile::setPhysical(bool physical)
{
}

