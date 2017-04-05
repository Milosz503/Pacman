#include "GameObject.h"




GameObject::GameObject(Stage * stage) :
	stage_(stage)
{
}

GameObject::~GameObject()
{
}

Stage * GameObject::getStage()
{
	return stage_;
}
