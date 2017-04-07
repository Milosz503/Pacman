#include "GameState.h"



GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	world_(context),
	posY(0),
	posX(5),
	currentColor(CharacterColor::Grey),
	backgroundColor_(sf::Color::Black)
{

	scoreText_.setPosition(2, 2);

}

bool GameState::update(sf::Time dt)
{
	world_.update(dt);

	return true;
}

bool GameState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed)
	{
		world_.handleEvent(event);

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

	scoreText_.setText(L"Score: " + std::to_wstring(world_.getScore()));


	getContext().console->draw(text);
	getContext().console->draw(scoreText_);

	world_.draw();

}

GameState::~GameState()
{
}
