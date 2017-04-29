#include "EditSystem.h"
#include "World.h"

using namespace sf;

EditSystem::EditSystem(SystemManager * systemManager, World * world) :
	System(systemManager, world)
{
	window_ = getWorld()->getConsole()->getWindow();
	scene_ = getWorld()->getScene();

}

void EditSystem::update()
{

	
	if (Keyboard::isKeyPressed(Keyboard::Q))
	{

		sf::Vector2i pos = getSelectedTile();

		if (isInsideScene(pos))
		{
			//addTile(Tile::Point, pos);
		}
	}

	if (Mouse::isButtonPressed(Mouse::Button::Left))
	{
		
		sf::Vector2i pos =  getSelectedTile();

		if (isInsideScene(pos))
		{
			//addTile(Tile::Wall, pos);
		}
	}

	if (Mouse::isButtonPressed(Mouse::Button::Right))
	{

		sf::Vector2i pos = getSelectedTile();

		if (isInsideScene(pos))
		{
			removeTile(pos);
		}
	}

}

void EditSystem::draw()
{
}

EditSystem::~EditSystem()
{
}

sf::Vector2i EditSystem::getSelectedTile()
{
	sf::Vector2i pos = Mouse::getPosition(*window_);

	int fontScale = getWorld()->getConsole()->getFontSize();

	pos.x /= fontScale;
	pos.y /= fontScale;

	return pos;
}

bool EditSystem::isInsideScene(sf::Vector2i position)
{
	sf::IntRect rect = getWorld()->getBounds();

	return (position.x >= rect.left && position.x < rect.left + rect.width &&
		position.y >= rect.top && position.y < rect.top + rect.height);
	


}

void EditSystem::removeTile(sf::Vector2i position)
{
	if (scene_->getTile(position.x, position.y) != nullptr)
	{
		scene_->removeTile(position.x, position.y);


	}
}

//void EditSystem::addTile(Tile::Type type, sf::Vector2i position)
//{
//	if (scene_->getTile(position.x, position.y) == nullptr || scene_->getTile(position.x, position.y)->getType() == Tile::None)
//	{
////		scene_->addTile(type, position.x, position.y);
//
//
//	}
//}
