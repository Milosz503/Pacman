#include "PlayerController.h"
#include <SFML\Graphics.hpp>
#include "World.h"
#include "imgui.h"
#include "imgui-SFML.h"

using namespace sf;

PlayerController::PlayerController(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	newDirX(Direction::ZeroX),
	newDirY(Direction::ZeroY)
{
}


PlayerController::~PlayerController()
{
}

void PlayerController::update()
{

	if (getWorld()->getScene()->getPlayer() == nullptr)
		return;

	

	Direction::X x = Direction::ZeroX;
	Direction::Y y = Direction::ZeroY;

	if (Keyboard::isKeyPressed(Keyboard::Up))
	{
		y = Direction::Up;
	}
	else if (Keyboard::isKeyPressed(Keyboard::Down))
	{
		y = Direction::Down;

	}
	else if (Keyboard::isKeyPressed(Keyboard::Left))
	{
		x = Direction::Left;
	}
	else if (Keyboard::isKeyPressed(Keyboard::Right))
	{
		x = Direction::Right;
	}
	if (x == Direction::ZeroX && y == Direction::ZeroY)
	{
		x = newDirX;
		y = newDirY;
	}
	else
	{
		newDirX = x;
		newDirY = y;
	}


	if (x != Direction::ZeroX || y != Direction::ZeroY)
	{
		

		sf::Vector2i nextMove(x, y);

		sf::Vector2i nextPosition = getWorld()->getScene()->getPlayer()->getPosition();
		nextPosition += nextMove;

		if (getWorld()->getScene()->isTilePhysical(nextPosition.x, nextPosition.y))
		{
			

			x = Direction::ZeroX;
			y = Direction::ZeroY;
		}

	}

	if(x != Direction::ZeroX || y != Direction::ZeroY)
		getWorld()->getScene()->getPlayer()->setSpeed(x, y);
}

void PlayerController::onEvent(SystemEvent * event)
{
	if (event->type == SystemEvent::onRemove)
	{
		OnRemoveEvent* onRemove = static_cast<OnRemoveEvent*>(event);

		if (onRemove->object->getCategory() == "player")
		{
			newDirX = Direction::ZeroX;
			newDirY = Direction::ZeroY;
		}
	}
}
