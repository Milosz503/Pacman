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
	type_(type),
	collideFunction_(nullptr)
{

	setTexture(Table[type].texture);
	

	setPosition(x, y);
}

Tile::Tile(World * world, luabridge::LuaRef& data, int x, int y) :
	GameObject(world),
	isPhysical_(false),
	type_(None),
	collideFunction_(nullptr)

	
{
	setPosition(x, y);

	if (!data.isNil() && !data["type"].isNil())
	{
		std::string type = data["type"].cast<std::string>();

		if (type == "wall")
		{
			type_ = Wall;
			isPhysical_ = Table[type_].isPhysical;

			if (!data["texture"].isNil())
			{
				std::string texture = data["texture"].cast<std::string>();

				std::cout << "Loading tile " << texture << " -" << texture[0] << "- " << std::endl;

				setTexture(TextureManager::getTexture(texture[0], CharacterColor::White));
			}
			else
			{
				setTexture(TextureManager::getTexture(L'#', CharacterColor::White));
			}

		}
		else if (type == "point")
		{
			type_ = Point;
			isPhysical_ = Table[type_].isPhysical;
			setTexture(Table[type_].texture);
		}
		else
		{
			type_ = None;
			isPhysical_ = false;
			setTexture(TextureManager::getTexture(L'?', CharacterColor::White));
		}
	}
	else
	{
		type_ = None;
		isPhysical_ = false;
		setTexture(TextureManager::getTexture(L'-', CharacterColor::Red));
	}
	//setTexture(TextureManager::getTexture(L'|', CharacterColor::Red));
}

Tile::~Tile()
{
}


void Tile::update()
{
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

void Tile::collision()
{
	if (collideFunction_ != nullptr)
		(*collideFunction_)(*getWorld()->getScene(), getX(), getY());
	else
	{
		//std::cout << "Func doesn't exist" << std::endl;
	}
}

void Tile::setCollideFunction(luabridge::LuaRef func)
{

	collideFunction_ = std::make_shared<luabridge::LuaRef>(func);
	
}

Tile::Type Tile::getType()
{
	return type_;
}

void Tile::getData(luabridge::LuaRef & data)
{
	if (type_ == Wall)
	{
		data["type"] = "wall";
		data["textureX"] = getTexture().rect.x;
		data["textureY"] = getTexture().rect.y;
		data["texture"] = "E";
	}
	else if (type_ == Point)
	{
		data["type"] = "point";
	}
	else
	{
		data["type"] = "none";
	}
}

void Tile::init()
{
}

