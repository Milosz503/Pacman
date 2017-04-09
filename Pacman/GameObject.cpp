#include "GameObject.h"




GameObject::GameObject(Stage * stage) :
	stage_(stage)
	//animations_(this)
{
}

GameObject::~GameObject()
{
}

Stage * GameObject::getStage()
{
	return stage_;
}
