#include "GameState.h"



GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	world_(context),
	posY(0),
	posX(5),
	currentColor(CharacterColor::Grey),
	backgroundColor_(sf::Color::Black),
	fps(0)
{

	scoreText_.setPosition(2, 2);
	updateTime_.setPosition(0, 47);
	drawTime_.setPosition(0, 48);

}

bool GameState::update(sf::Time dt)
{
	sf::Clock clock;
	clock.restart();

	world_.update(dt);

	updateTime_.setText(L"update time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()));

	if (dt.asSeconds() != 0)
	{
		fps = 1.0 / dt.asSeconds();
	}


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


	sf::Clock clock;
	clock.restart();


	

	ConsoleText text(L"fps: " + std::to_string(fps), currentColor);
	text.setBackground(backgroundColor_);
	text.setPosition(0, 45);

	scoreText_.setText(L"Score: " + std::to_wstring(world_.getScore()));


	getContext().console->draw(text);
	getContext().console->draw(scoreText_);
	getContext().console->draw(updateTime_);
	getContext().console->draw(drawTime_);

	world_.draw();

	drawTime_.setText(L"Draw time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()));

}

GameState::~GameState()
{
}
