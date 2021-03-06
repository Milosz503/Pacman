#include "Tile.h"

#include "World.h"
#include "Scene.h"







Tile::Tile(World* world, sol::table& data) :
	GameObject(world, GameObject::Tile, data),
	isPhysical_(false),
	isAddedToRemove_(false)
{
	
	//bool isPhysical = data["isPhysical"].get_or(false);

	//setPhysical(isPhysical);

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

void Tile::markToRemove()
{
	GameObject::markToRemove();
	if (!isAddedToRemove_)
	{
		getWorld()->getScene()->removeTile(this);
	}
}

void Tile::addedToRemove()
{
	isAddedToRemove_ = true;
}


