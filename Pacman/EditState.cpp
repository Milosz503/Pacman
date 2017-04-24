#include "EditState.h"





EditState::EditState(StateStack & stack, Context context) :
	State(stack, context),
	textureManager_(context.textureManager),
	console_(context.console),
	level_(context.level)
{
}

EditState::~EditState()
{
}

bool EditState::update(sf::Time dt)
{
	if (Mouse::isButtonPressed(Mouse::Button::Left))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		int width = level_->getSize().x;
		int height = level_->getSize().y;


		if (pos.x < width && pos.y < height && pos.x >= 0 && pos.y >= 0)
		{

			level_->setTile(pos.x, pos.y, Tile::Wall);
		}
	}
	if (Mouse::isButtonPressed(Mouse::Button::Right))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		int width = level_->getSize().x;
		int height = level_->getSize().y;


		if (pos.x < width && pos.y < height && pos.x >= 0 && pos.y >= 0)
		{

			level_->setTile(pos.x, pos.y, Tile::None);
		}
	}
	/*if (Keyboard::isKeyPressed(Keyboard::Q))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		sf::IntRect rect = world_.getBounds();

		if (pos.x >= rect.left && pos.x < rect.left + rect.width &&
			pos.y >= rect.top && pos.y < rect.top + rect.height)
		{
			if (world_.getTile(pos.x, pos.y) == nullptr)
			{
				world_.addTile(Tile::Point, pos.x, pos.y);

				if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
					pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
				{
					getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::Point);
				}
			}
		}
	}

	if (Mouse::isButtonPressed(Mouse::Button::Right))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		sf::IntRect rect = world_.getBounds();

		if (world_.getTile(pos.x, pos.y) != nullptr)
		{
			world_.removeTile(pos.x, pos.y);
			if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
				pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
			{
				getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::None);
			}
		}
	}*/


	return true;
}

bool EditState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
	{
		LevelManager levelManager(level_);
		levelManager.saveFile("level2.txt");

		requestStackPop();
		requestStackPush(States::Menu);
	}

	return true;
}

void EditState::draw()
{
	ConsoleCharacter tile(textureManager_->getTexture('#', CharacterColor::White));


	for (int x = 0; x < level_->getSize().x; ++x)
	{
		for (int y = 0; y < level_->getSize().y; ++y)
		{
			if (level_->getTile(x, y) != 0)
			{
				tile.setPosition(x, y);
				console_->draw(tile);
			}
			
		}
	}

}
