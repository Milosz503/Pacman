#include "GameState.h"



GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	posY(6),
	posX(3)
{
}

bool GameState::update(sf::Time dt)
{


	return false;
}

bool GameState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed)
	{
		if (event.key.code == Keyboard::Escape)
		{
			requestStackPop();
			requestStackPush(States::Menu);

		}
		if (event.key.code == Keyboard::S)
		{
			posY++;

		}
		if (event.key.code == Keyboard::W)
		{
			posY--;

		}
		if (event.key.code == Keyboard::A)
		{
			posX--;

		}
		if (event.key.code == Keyboard::D)
		{
			posX++;

		}
	}

	return false;
}

void GameState::draw()
{
	ConsoleText text(L"Pacman gra", CharacterColor::Green);

	text.setPosition(posX, posY);

	getContext().console->draw(text);

}

GameState::~GameState()
{
}
