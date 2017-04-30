#include "GameObject.h"


#include <iostream>

GameObject::GameObject(const GameObject & obj) :
	ConsoleCharacter(obj),
	luaData_(obj.luaData_),
	world_(obj.world_),
	isToRemove_(obj.isToRemove_),
	name_(obj.name_),
	type_(obj.type_),
	luaHandle_(this),
	collisionFunction_(obj.collisionFunction_),
	updateFunction_(obj.updateFunction_)
{
}

GameObject::GameObject(World* world, Type type) :
	world_(world),
	isToRemove_(false),
	name_(""),
	type_(type),
	luaHandle_(this),
	collisionFunction_(nullptr),
	updateFunction_(nullptr)
{
}

void GameObject::setLuaData(luabridge::LuaRef luaData)
{
	luaData_ = new luabridge::LuaRef(luaData);
}



bool GameObject::isToRemove()
{
	return isToRemove_;
}

void GameObject::markToRemove()
{
	isToRemove_ = true;
}

void GameObject::update()
{
	if (updateFunction_ != nullptr)
	{

		try
		{
			(*updateFunction_)(getHandle(), *luaData_);
		}
		catch (luabridge::LuaException e)
		{
			std::cout << "LUA ERROR: update! " << e.what() << std::endl;
		}

	}
}

void GameObject::setName(std::string name)
{
	name_ = name;
}

std::string GameObject::getName()
{
	return name_;
}

GameObject::Type GameObject::getType()
{
	return type_;
}

void GameObject::setLuaFunctions(luabridge::LuaRef & object)
{
	if(!object["collide"].isNil() && object["collide"].isFunction())
		collisionFunction_ = std::make_shared<luabridge::LuaRef>(object["collide"]);

	if (!object["update"].isNil() && object["update"].isFunction())
		updateFunction_ = std::make_shared<luabridge::LuaRef>(object["update"]);
}

void GameObject::collide(GameObject * collidingObject)
{
	if (collisionFunction_ != nullptr)
	{

		try
		{
			(*collisionFunction_)(getHandle(), collidingObject->getHandle());
		}
		catch (luabridge::LuaException e)
		{
			std::cout << "LUA ERROR: collision! " << e.what() << std::endl;
		}


	}

	else
	{
		//std::cout << "Func doesn't exist" << std::endl;
	}
}

GameObject::~GameObject()
{
}

World * GameObject::getWorld()
{
	return world_;
}

LuaObjectHandle&  GameObject::getHandle()
{
	return luaHandle_;
}


