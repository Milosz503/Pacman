#include "LuaObjectHandle.h"

#include "Entity.h"
#include "Tile.h"
#include "World.h"

LuaObjectHandle::LuaObjectHandle(GameObject* object) :
	object_(object)
{
}

int LuaObjectHandle::getX() const
{
	return object_->getX();
}

int LuaObjectHandle::getY() const
{
	return object_->getY();
}

std::string LuaObjectHandle::getName() const
{
	return object_->getName();
}

std::string LuaObjectHandle::getType() const
{
	if (object_->getType() == GameObject::Entity)
		return "entity";

	return "tile";
}

GameObject * LuaObjectHandle::getObject()
{
	return object_;
}

void LuaObjectHandle::setPosition(int x, int y)
{
	if(object_->getType() == GameObject::Entity)
	{
		object_->setPosition(x, y);
	}
	else
	{
		std::cout << "LUA ERROR: Can't change tile position" << std::endl;
	}
}

void LuaObjectHandle::setColor(int color)
{
	std::cout << "SET COLOR" << std::endl;

	int textureY = object_->getTexture().rect.y;
	textureY = color * 16 + (textureY % 16);

	TextureCharacter texture = object_->getTexture();
	texture.rect.y = textureY;

	object_->setTexture(texture);
}

void LuaObjectHandle::setTexture(int x, int y)
{
	TextureCharacter texture = object_->getTexture();

	texture.rect.x = x;

	if (y < 16)
	{
		texture.rect.y = y + ((texture.rect.y / 16)*16);
	}
	else
	{
		texture.rect.y = y;
	}

	object_->setTexture(texture);
}




LuaObjectHandle::~LuaObjectHandle()
{
}
