#include "GameObject.h"




GameObject::GameObject(GameSystems* systems) :
	systems_(systems)
	//animations_(this)
{
}

GameObject::~GameObject()
{
}

GameSystems * GameObject::getSystems()
{
	return systems_;
}
