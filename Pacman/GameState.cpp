#include "GameState.h"



GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	posY(6),
	posX(3),
	currentColor(CharacterColor::Grey),
	backgroundColor_(sf::Color::Black)
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
		if (event.key.code == Keyboard::Return)
		{

			if (currentColor + 1 != CharacterColor::Count)
			{
				currentColor = (CharacterColor::Color)((int)(currentColor) + 1);
			}
			else
			{
				currentColor = CharacterColor::White;
			}

		}
		if (event.key.code == Keyboard::R)
		{
			if (backgroundColor_.r < 250)
				backgroundColor_.r += 10;
			else
				backgroundColor_.r = 0;

		}
		if (event.key.code == Keyboard::G)
		{
			if (backgroundColor_.g < 250)
				backgroundColor_.g += 10;
			else
				backgroundColor_.g = 0;

		}
		if (event.key.code == Keyboard::B)
		{
			if (backgroundColor_.b < 250)
				backgroundColor_.b += 10;
			else
				backgroundColor_.b = 0;

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
	ConsoleText text(L"Pacman gra", currentColor);
	text.setBackground(backgroundColor_);
	text.setPosition(posX, posY);

	getContext().console->draw(text);

}

GameState::~GameState()
{
}
