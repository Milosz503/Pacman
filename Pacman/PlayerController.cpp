#include "PlayerController.h"



PlayerController::PlayerController()
{
}


PlayerController::~PlayerController()
{
}

void PlayerController::update(sf::Time dt, Entity * player)
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
	player->setSpeed(x, y);
}

void PlayerController::handleEvent(sf::Event, Entity * player)
{
}
