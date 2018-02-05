#include "GameState.h"

#include "TextureManager.h"
#include "ConsoleWindow.h"
#include "Physics.h"
#include "EntityController.h"
#include "PlayerController.h"
#include "Scene.h"
#include "GameLogic.h"
#include "EditSystem.h"
#include "StateStack.h"
#include "LevelLogic.h"

GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	world_(context),
	systems_(&world_),
	fps_(0),
	averageUpdate_(0)
{

	console_ = getContext().console;

	scoreText_.setPosition(2, 2);
	livesText_.setPosition(12, 2);


	updateTime_.setPosition(0, 47);
	drawTime_.setPosition(0, 48);

	fpsText_.setColor(CharacterColor::Grey);
	fpsText_.setBackground(sf::Color::Black);
	fpsText_.setPosition(0, 45);


	

	systems_.addSystem<Physics>();
	systems_.addSystem<EntityController>();
	systems_.addSystem<PlayerController>();
	systems_.addSystem<GameLogic>();
	systems_.addSystem<EditSystem>();
	systems_.addSystem<LevelLogic>();

}


bool GameState::update(sf::Time dt)
{
	sf::Clock clock;
	clock.restart();


	systems_.update();
	world_.update();
	


	if (world_.getFrameNumber() % 20 == 0)
		averageUpdate_ = 0;

	averageUpdate_ += clock.getElapsedTime().asSeconds();
	updateTime_.setText(L"update time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + 
		L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()) +
		L" avarage: " + std::to_wstring(averageUpdate_/(world_.getFrameNumber()%20+1)));

	if (dt.asSeconds() != 0)
	{
		fps_ = 1.0 / dt.asSeconds();
	}

	return true;
	
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
	
	}


	return false;
}

void GameState::draw()
{

	sf::Clock clock;
	clock.restart();


	scoreText_.setText(L"Score: " + std::to_wstring(world_.getScore()));
	livesText_.setText(L"Lives: " + std::to_wstring(world_.getLives()));
	livesText_.setPosition(scoreText_.getX() + scoreText_.getWidth() + 3, livesText_.getY());

	fpsText_.setText(L"fps: " + std::to_string(fps_));


	console_->draw(fpsText_);
	console_->draw(scoreText_);
	console_->draw(livesText_);
	console_->draw(updateTime_);
	console_->draw(drawTime_);

	console_->setOffset(2, 4);

	world_.draw();
	systems_.draw();

	console_->setOffset(0, 0);
	

	drawTime_.setText(L"Draw time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + 
		L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()));

}

GameState::~GameState()
{
}

