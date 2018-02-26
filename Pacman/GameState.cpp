#include "GameState.h"

#include "TextureManager.h"
#include "ConsoleWindow.h"
#include "Physics.h"
#include "EntityController.h"
#include "PlayerController.h"
#include "Scene.h"
#include "EditSystem.h"
#include "StateStack.h"
#include "LuaSystem.h"

GameState::GameState(StateStack & stack, Context context, bool isEditor) :
	State(stack, context),
	world_(context),
	systems_(&world_),
	fps_(0),
	averageUpdate_(0)
{
	world_.setSystems(&systems_);

	console_ = getContext().console;

	//getContext().music->stop();
	getContext().music->play(MusicID::GameTheme);
	



	updateTime_.setPosition(0, 47);
	drawTime_.setPosition(0, 48);

	fpsText_.setColor(CharacterColor::Grey);
	fpsText_.setBackground(sf::Color::Black);
	fpsText_.setPosition(0, 0);



	
	systems_.addSystem<EntityController>();
	systems_.addSystem<PlayerController>();
	systems_.addSystem<LuaSystem>();
	systems_.addSystem<Physics>();
	

	if(isEditor)
		systems_.addSystem<EditSystem>();

}


bool GameState::update(sf::Time dt)
{
	if (world_.isGameEnded())
	{
		(*getContext().endGameContent) = world_.getEndGameContent();
		(*getContext().score) = world_.getScore();
		(*getContext().endGameColor) = world_.getEndGameColor();
		requestStackPop();
		requestStackPush(States::EndGame);
	}

	sf::Clock clock;
	clock.restart();

	//std::cout << "Start update" << std::endl;
	if (!world_.isEditMode())
	{
		systems_.update();
		
	}
	world_.update();
	//std::cout << "End update" << std::endl;


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
		if (event.key.code == Keyboard::S)
		{

			world_.getLuaManager().saveLevel("data/levels/save2.lua");

		}
	
	}

	systems_.sendSystemEvent(new InputEvent(event));


	return false;
}

void GameState::draw()
{

	sf::Clock clock;
	clock.restart();

	sf::Vector2i offset;
	offset.x = console_->getWidth() / 2 - world_.getBounds().width / 2;
	offset.y = console_->getHeight() / 2 - world_.getBounds().height / 2;

	


	scoreText_.setText(L"Score: " + std::to_wstring(world_.getScore()));
	scoreText_.setColor(CharacterColor::White);
	livesText_.setText(L"Lives: " + std::to_wstring(world_.getLives()));
	livesText_.setColor(CharacterColor::White);

	int width = world_.getBounds().width-2;
	if (width < scoreText_.getWidth() + livesText_.getWidth() + 3)
		width = scoreText_.getWidth() + livesText_.getWidth() + 3;

	int x = (console_->getWidth() - width) / 2;

	scoreText_.setPosition(x, offset.y - 4);
	livesText_.setPosition(x + width - livesText_.getWidth(), offset.y - 4);
	

	fpsText_.setText(L"fps: " + std::to_string(fps_));


	console_->draw(fpsText_);
	console_->draw(scoreText_);
	console_->draw(livesText_);
	//console_->draw(updateTime_);
	//console_->draw(drawTime_);

	world_.setSceneOffset(offset);
	console_->setOffset(offset.x, offset.y);

	world_.draw();
	systems_.draw();

	
	console_->setOffset(0, 0);
	

	drawTime_.setText(L"Draw time: " + std::to_wstring(clock.getElapsedTime().asSeconds()) + 
		L" " + std::to_wstring(1.0/clock.getElapsedTime().asSeconds()));

	TextureCharacter texture;
	texture.rect.x = 14;
	texture.rect.y = 3 + 16* CharacterColor::LightGrey;
	//texture.backgroundColor = sf::Color(128, 128, 128);
	//ConsoleRectangle rect(2, 3, world_.getBounds().width, 1, texture);
	ConsoleRectangle rect(x-2, offset.y-3, width+4, 1, texture);
	console_->draw(rect);

	texture.rect.y = 10 + 16 * CharacterColor::DarkGrey;
	rect.setTexture(texture);
	rect.setSize(world_.getBounds().width + 2, world_.getBounds().height + 2);
	rect.setPosition(offset.x-1, offset.y - 1);
	console_->draw(rect);



}

GameState::~GameState()
{
}

