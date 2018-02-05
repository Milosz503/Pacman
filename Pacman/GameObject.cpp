#include "GameObject.h"
#include "World.h"

#include <iostream>


GameObject::GameObject(World* world, Type type, sol::table luaInstance) :
	world_(world),
	isToRemove_(false),
	name_(""),
	type_(type),
	category_("none"),
	luaInstance_(luaInstance),
	luaHandle_(this)
{

}







void GameObject::update()
{
	
}



GameObject::~GameObject()
{
}

bool GameObject::isToRemove()
{
	return isToRemove_;
}

void GameObject::markToRemove()
{
	isToRemove_ = true;
}
void GameObject::setName(std::string name)
{
	name_ = name;
}

std::string GameObject::getName()
{
	return name_;
}

void GameObject::setCategory(std::string category)
{
	category_ = category;
}

std::string GameObject::getCategory()
{
	return category_;
}

GameObject::Type GameObject::getType()
{
	return type_;
}



World * GameObject::getWorld()
{
	return world_;
}

LuaObjectHandle&  GameObject::getHandle()
{
	return luaHandle_;
}

sol::table & GameObject::getLuaInstance()
{
	return luaInstance_;
}


