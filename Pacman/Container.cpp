#include "Container.h"
#include <iostream>

namespace GUI
{



Container::Container() :
	spacing_(0)
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

void Container::setSpacing(int spacing)
{
	spacing_ = spacing;
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
	int middleX = getX() + getSize().x / 2;

	for (auto& item : items_)
	{
		item->setPosition(middleX - item->getSize().x/2, lastY);
		lastY += spacing_+1;
	}
}

void Container::onSizeChange()
{
	onPositionChange();
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