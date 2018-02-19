#include "Container.h"


namespace GUI
{



Container::Container()
{

}

Container::~Container()
{

}

void Container::addItem(Item * item)
{
	items_.push_back(item);
	if (items_.size() == 1)
		item->setFocus(true);
	else
		item->setFocus(false);
	focusedItem_ = 0;

	onPositionChange();
}

void Container::draw(ConsoleWindow * console)
{
	for (auto& item : items_)
	{
		item->draw(console);
	}
}

void Container::onEvent(sf::Event event)
{
	for (auto& item : items_)
	{
		item->handleEvent(event);
	}

	if (event.type == sf::Event::KeyPressed)
	{
		if (event.key.code == sf::Keyboard::Up)
		{
			focusUp();
		}
		else if (event.key.code == sf::Keyboard::Down)
		{
			focusDown();
		}

	}
}

void Container::onPositionChange()
{
	int lastY = getY();

	for (auto& item : items_)
	{
		item->setPosition(getX(), lastY);
		lastY++;
	}
}

void Container::focusUp()
{
	if (focusedItem_ > 0)
	{
		items_[focusedItem_]->setFocus(false);
		focusedItem_--;
		items_[focusedItem_]->setFocus(true);
	}
}

void Container::focusDown()
{
	if (focusedItem_ < items_.size()-1)
	{
		items_[focusedItem_]->setFocus(false);
		focusedItem_++;
		items_[focusedItem_]->setFocus(true);
	}
}

}