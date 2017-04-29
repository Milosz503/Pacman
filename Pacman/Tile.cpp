#include "Tile.h"

#include "DataTables.h"
#include "World.h"








Tile::Tile(World* world, int x, int y) :
	GameObject(world, GameObject::Tile),
	isPhysical_(false)
{

	setTexture(TextureManager::getTexture(L'?', CharacterColor::Red));
	

	setPosition(x, y);
}

//Tile::Tile(World * world, luabridge::LuaRef& data, int x, int y) :
//	GameObject(world),
//	isPhysical_(false),
//	type_(None),
//	collideFunction_(nullptr)
//
//	
//{
//	setPosition(x, y);
//
//	if (!data.isNil() && !data["type"].isNil())
//	{
//		std::string type = data["type"].cast<std::string>();
//
//		if (type == "wall")
//		{
//			type_ = Wall;
//			isPhysical_ = Table[type_].isPhysical;
//
//			if (!data["texture"].isNil())
//			{
//				std::string texture = data["texture"].cast<std::string>();
//
//				std::cout << "Loading tile " << texture << " -" << texture[0] << "- " << std::endl;
//
//				setTexture(TextureManager::getTexture(texture[0], CharacterColor::White));
//			}
//			else
//			{
//				setTexture(TextureManager::getTexture(L'#', CharacterColor::White));
//			}
//
//		}
//		else if (type == "point")
//		{
//			type_ = Point;
//			isPhysical_ = Table[type_].isPhysical;
//			setTexture(Table[type_].texture);
//		}
//		else
//		{
//			type_ = None;
//			isPhysical_ = false;
//			setTexture(TextureManager::getTexture(L'?', CharacterColor::White));
//		}
//	}
//	else
//	{
//		type_ = None;
//		isPhysical_ = false;
//		setTexture(TextureManager::getTexture(L'-', CharacterColor::Red));
//	}
//	//setTexture(TextureManager::getTexture(L'|', CharacterColor::Red));
//}

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


