#include "LuaObjectHandle.h"

#include "Entity.h"
#include "Tile.h"
#include "World.h"

LuaObjectHandle::LuaObjectHandle(GameObject* object) :
	vars_(object->getWorld()->getLua(), sol::create),
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

std::string LuaObjectHandle::getCategory() const
{
	return object_->getCategory();
}



GameObject * LuaObjectHandle::getObject() const
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

void LuaObjectHandle::setSpeed(int x, int y)
{
	if (object_->getType() == GameObject::Entity)
	{
		static_cast<Entity*>(object_)->setSpeed(
			static_cast<Direction::X>(x), static_cast<Direction::Y>(y));
	}
	else
	{
		std::cout << "Error can not set speed to 'tile'!" << std::endl;
	}
}

sf::Vector2i LuaObjectHandle::getSpeed()
{
	if (object_->getType() == GameObject::Entity)
	{
		return static_cast<Entity*>(object_)->getSpeed();

	}
	else
	{
		std::cout << "Error 'tile' doesn't have speed!" << std::endl;
	}
	return sf::Vector2i(0, 0);
}

void LuaObjectHandle::setDefaultSpeed(int speed)
{
	if (object_->getType() == GameObject::Entity)
	{
		static_cast<Entity*>(object_)->setDefaultSpeed(speed);
	}
	else
	{
		std::cout << "Error can not set speed to 'tile'!" << std::endl;
	}
}

int LuaObjectHandle::getDefaultSpeed()
{
	if (object_->getType() == GameObject::Entity)
	{
		return static_cast<Entity*>(object_)->getDefaultSpeed();
	}
	else
	{
		std::cout << "Error 'tile' doesn't have speed!" << std::endl;
	}
	return 0;
}

int LuaObjectHandle::getHp()
{
	return object_->getHp();
}

void LuaObjectHandle::heal(unsigned hp)
{
	object_->setHp(object_->getHp() + hp);
}

void LuaObjectHandle::damage(unsigned dmg)
{
	object_->setHp(object_->getHp() - dmg);
}

void LuaObjectHandle::guideTo(LuaObjectHandle & destination, sol::protected_function customWages)
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		entity->guideTo(destination.getObject(), customWages);

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile'" << std::endl;
	}
}
void LuaObjectHandle::guideTo_costs(LuaObjectHandle & destination, sol::protected_function customWages)
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		entity->guideTo(destination.getObject(), customWages);

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile'" << std::endl;
	}
}

LuaObjectHandle* LuaObjectHandle::getDestination()
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		return &entity->getDestination()->getHandle();

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile', it have not destination" << std::endl;
	}
	return nullptr;
}

bool LuaObjectHandle::isGuided()
{
	return false;
}

void LuaObjectHandle::remove()
{
	object_->markToRemove();
}

sol::table & LuaObjectHandle::getVars()
{
	return vars_;
}




LuaObjectHandle::~LuaObjectHandle()
{
}
