#include "GameObject.h"




GameObject::GameObject(World* world) :
	world_(world),
	isToRemove_(false)
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

GameObject::~GameObject()
{
}

World * GameObject::getWorld()
{
	return world_;
}


