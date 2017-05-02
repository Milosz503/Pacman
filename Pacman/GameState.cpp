#include "GameState.h"

#include "TextureManager.h"
#include "ConsoleWindow.h"
#include "Physics.h"
#include "EntityController.h"
#include "PlayerController.h"
#include "Scene.h"
#include "GameLogic.h"
#include "EditSystem.h"


GameState::GameState(StateStack & stack, Context context) :
	State(stack, context),
	world_(context),
	systems_(&world_),
	posY(0),
	posX(5),
	currentColor(CharacterColor::Grey),
	backgroundColor_(sf::Color::Black),
	fps(0)
{

	scoreText_.setPosition(2, 2);
	updateTime_.setPosition(0, 47);
	drawTime_.setPosition(0, 48);

	character_.setTexture(TextureManager::getTexture(L'P', CharacterColor::Green));
	character_.setPosition(0, 0);

	
	

	//world_.getScene()->prepareLevel(getContext().level);
	LevelManager::loadLevel(world_.getScene(), world_.getEntityManager(), "data/level.lua");



	systems_.addSystem<Physics>();
	systems_.addSystem<EntityController>();
	systems_.addSystem<PlayerController>();
	systems_.addSystem<GameLogic>();
	systems_.addSystem<EditSystem>();
	




}


bool GameState::update(sf::Time dt)
{
	sf::Clock clock;
	clock.restart();


	systems_.update();
	world_.update();
	
	if (world_.getFrameNumber() % 7 == 0)
		character_.move(0, 1);

	if (world_.getFrameNumber() % 7 == 0)
		character_.move(1, 0);

	if (world_.getFrameNumber() % 20 == 0)
		averageUpdate_ = 0;

	averageUpdate_ += clock.getElapsedTime().asSeconds();
	updateTime_.setText(L"update time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()) +
	L" avarage: " + std::to_wstring(averageUpdate_/(world_.getFrameNumber()%20+1)));

	if (dt.asSeconds() != 0)
	{
		fps = 1.0 / dt.asSeconds();
	}
	return true;

	


	return true;
}

bool GameState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed)
	{

		if (event.key.code == Keyboard::Escape)
		{
			//LevelManager levelManager(getContext().level);
			//levelManager.saveFile("level2.txt");

			//LevelManager::saveLevel(world_.getScene(), "data/level.lua");

			requestStackPop();
			requestStackPush(States::Menu);

		}
	
	}

	if (event.type == Event::MouseButtonPressed)
	{
		if (event.mouseButton.button == sf::Mouse::Left)
		{
			//world_.addTile(Tile::Wall, event.mouseButton.x / 16, event.mouseButton.y / 16);
		}

		if (event.mouseButton.button == sf::Mouse::Right)
		{
			//world_.removeTile(event.mouseButton.x / 16, event.mouseButton.y / 16);
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

	systems_.draw();
	world_.draw();

	

	drawTime_.setText(L"Draw time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()));
	getContext().console->draw(character_);
}

GameState::~GameState()
{
}
