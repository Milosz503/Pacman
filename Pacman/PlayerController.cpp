#include "PlayerController.h"



PlayerController::PlayerController(GameSystems systems) :
	System(systems)
{
}


PlayerController::~PlayerController()
{
}

void PlayerController::update()
{

	DirectionX::Move x = DirectionX::Zero;
	DirectionY::Move y = DirectionY::Zero;

	if (Keyboard::isKeyPressed(Keyboard::Up))
	{
		y = DirectionY::Up;
	}
	if (Keyboard::isKeyPressed(Keyboard::Down))
	{
		y = DirectionY::Down;
	}
	if (Keyboard::isKeyPressed(Keyboard::Left))
	{
		x = DirectionX::Left;
	}
	if (Keyboard::isKeyPressed(Keyboard::Right))
	{
		x = DirectionX::Right;
	}
	getSystems().scene->getPlayer()->setSpeed(x, y);
}
