#include "PlayerController.h"
#include <SFML\Graphics.hpp>
#include "World.h"

using namespace sf;

PlayerController::PlayerController(SystemManager* systemManager, World* world) :
	System(systemManager, world)
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
	getWorld()->getScene()->getPlayer()->setSpeed(x, y);
}
