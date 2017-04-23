#include "GameState.h"

#include "TextureManager.h"
#include "ConsoleWindow.h"
#include "Physics.h"
#include "EntityController.h"
#include "PlayerController.h"
#include "Scene.h"
#include "GameLogic.h"


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


	LevelManager levelManager(getContext().level);
	levelManager.loadFromFile("level2.txt");
	

	world_.getScene()->prepareLevel(getContext().level);



	systems_.addSystem<Physics>();
	systems_.addSystem<EntityController>();
	systems_.addSystem<PlayerController>();
	systems_.addSystem<GameLogic>();
	




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
	updateTime_.setText(L"update time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()) +
	L" avarage: " + std::to_wstring(averageUpdate_/(world_.getFrameNumber()%20+1)));

	if (dt.asSeconds() != 0)
	{
		fps = 1.0 / dt.asSeconds();
	}
	return true;

	//if (Mouse::isButtonPressed(Mouse::Button::Left))
	//{
	//	sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

	//	pos.x /= 16;
	//	pos.y /= 16;

	//	//sf::IntRect rect = world_.getBounds();

	//	if (pos.x >= rect.left && pos.x < rect.left + rect.width &&
	//		pos.y >= rect.top && pos.y < rect.top + rect.height)
	//	{
	//		if (world_.getTile(pos.x, pos.y) == nullptr)
	//		{
	//			world_.addTile(Tile::Wall, pos.x, pos.y);

	//			if (pos.x >= rect.left+1 && pos.x < rect.left + rect.width - 1 &&
	//				pos.y >= rect.top+1 && pos.y < rect.top + rect.height - 1)
	//			{
	//				getContext().level->setTile(pos.x-1, pos.y-1, Tile::Wall);
	//			}
	//		}
	//	}
	//}
	//if (Keyboard::isKeyPressed(Keyboard::Q))
	//{
	//	sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

	//	pos.x /= 16;
	//	pos.y /= 16;

	//	sf::IntRect rect = world_.getBounds();

	//	if (pos.x >= rect.left && pos.x < rect.left + rect.width &&
	//		pos.y >= rect.top && pos.y < rect.top + rect.height)
	//	{
	//		if (world_.getTile(pos.x, pos.y) == nullptr)
	//		{
	//			world_.addTile(Tile::Point, pos.x, pos.y);

	//			if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
	//				pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
	//			{
	//				getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::Point);
	//			}
	//		}
	//	}
	//}

	//if (Mouse::isButtonPressed(Mouse::Button::Right))
	//{
	//	sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

	//	pos.x /= 16;
	//	pos.y /= 16;

	//	sf::IntRect rect = world_.getBounds();

	//	if (world_.getTile(pos.x, pos.y) != nullptr)
	//	{
	//		world_.removeTile(pos.x, pos.y);
	//		if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
	//			pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
	//		{
	//			getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::None);
	//		}
	//	}
	//}


	return true;
}

bool GameState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed)
	{

		if (event.key.code == Keyboard::Escape)
		{
			LevelManager levelManager(getContext().level);
			levelManager.saveFile("level2.txt");

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

}

GameState::~GameState()
{
}
