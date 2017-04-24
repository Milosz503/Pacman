#include "PlayerController.h"
#include <SFML\Graphics.hpp>
#include "World.h"

using namespace sf;

PlayerController::PlayerController(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	newDirX(DirectionX::Zero),
	newDirY(DirectionY::Zero)
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
	else if (Keyboard::isKeyPressed(Keyboard::Down))
	{
		y = DirectionY::Down;

	}
	else if (Keyboard::isKeyPressed(Keyboard::Left))
	{
		x = DirectionX::Left;
	}
	else if (Keyboard::isKeyPressed(Keyboard::Right))
	{
		x = DirectionX::Right;
	}
	if (x == DirectionX::Zero && y == DirectionY::Zero)
	{
		x = newDirX;
		y = newDirY;
	}
	else
	{
		newDirX = x;
		newDirY = y;
	}


	if (x != DirectionX::Zero || y != DirectionY::Zero)
	{
		

		sf::Vector2i nextMove(x, y);

		sf::Vector2i nextPosition = getWorld()->getScene()->getPlayer()->getPosition();
		nextPosition += nextMove;

		if (getWorld()->getScene()->isTilePhysical(nextPosition.x, nextPosition.y))
		{
			

			x = DirectionX::Zero;
			y = DirectionY::Zero;
		}

	}

	if(x != DirectionX::Zero || y != DirectionY::Zero)
		getWorld()->getScene()->getPlayer()->setSpeed(x, y);
}
