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
	setTexture(stage->getTextureManager()->getTexture(Table[type].texture));
	

	setPosition(x, y);
}

Tile::~Tile()
{
}


void Tile::update(sf::Time dt)
{
	if(getStage()->getFrameNumber() % 20 == 0)
		setTexture(getStage()->getTextureManager()->getTexture(Table[type_].texture));
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

