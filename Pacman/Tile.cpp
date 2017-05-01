#include "Tile.h"

#include "DataTables.h"
#include "World.h"








Tile::Tile(World* world, sol::table& data) :
	GameObject(world, GameObject::Tile, data),
	isPhysical_(false)
{
	
	bool isPhysical = data["isPhysical"].get_or(false);

	setPhysical(isPhysical);

}



Tile::~Tile()
{
}


void Tile::update()
{
	GameObject::update();

	unsigned long long frameNumber = getWorld()->getFrameNumber();

	//if(frameNumber % 12 == 0)
		//setTexture(Table[type_].texture);
}

bool Tile::isPhysical()
{
	return isPhysical_;
}

void Tile::setPhysical(bool physical)
{
	isPhysical_ = physical;
}


