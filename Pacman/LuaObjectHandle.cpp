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

void LuaObjectHandle::setName(std::string name)
{
	object_->setName(name);
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
		sf::Vector2i pos(x, y);
		pos = object_->getWorld()->getScene()->normalize(pos);
		object_->setPosition(pos.x, pos.y);
	}
	else
	{
		std::cout << "LUA ERROR: Can't change tile position" << std::endl;
	}
}

sf::Vector2i LuaObjectHandle::getPosition()
{
	return object_->getPosition();
}

void LuaObjectHandle::setColor(int color)
{

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

void LuaObjectHandle::setPhysical(bool isPhysical)
{
	if (object_->getType() == GameObject::Tile)
	{
		Tile* tile = static_cast<Tile*>(object_);
		tile->setPhysical(isPhysical);
	}
	else
	{
		std::cout << "Lua handle: Can not setPhysical on entity" << std::endl;
	}
}



void LuaObjectHandle::guideToPlayer(int frontCost, int backCost)
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		entity->guideToPlayer(frontCost, backCost);

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile'" << std::endl;
	}
}

void LuaObjectHandle::guideToPath(int x, int y)
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		entity->guideToPath(x, y);

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile'" << std::endl;
	}
}

void LuaObjectHandle::guideToDirection(int x, int y)
{
	if (object_->getType() == GameObject::Entity)
	{
		Entity* entity = static_cast<Entity*>(object_);

		entity->guideToDirection(x, y);

	}
	else
	{
		std::cout << "Lua handle: Can not guide 'tile'" << std::endl;
	}
}

void LuaObjectHandle::setGuidePriority(int priority)
{
	
	if (object_->getType() == GameObject::Entity)
	{
		static_cast<Entity*>(object_)->priority = priority;
	}
	else
	{
		std::cout << "Error can not guide priority to 'tile'!" << std::endl;
	}
}

void LuaObjectHandle::setCanMoveBack(bool canMoveBack)
{
	if (object_->getType() == GameObject::Entity)
	{
		static_cast<Entity*>(object_)->canMoveBack = canMoveBack;
	}
	else
	{
		std::cout << "Error can not set move back to 'tile'!" << std::endl;
	}
}






void LuaObjectHandle::remove()
{
	object_->markToRemove();
}

sol::table & LuaObjectHandle::getLuaInstance()
{
	return object_->getLuaInstance();
}




LuaObjectHandle::~LuaObjectHandle()
{
}
