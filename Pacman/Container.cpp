#include "Container.h"
#include <iostream>

namespace GUI
{



Container::Container(SoundPlayer* sounds) :
	sounds_(sounds),
	spacing_(0)
{

}

Container::~Container()
{
	items_.clear();
}

void Container::addItem(Item * item)
{
	item->setSounds(sounds_);
	items_.push_back(item);
	if (items_.size() == 1 || !items_[focusedItem_]->isFocusable())
	{
		item->setFocus(true);
		focusedItem_ = items_.size() - 1;
	}	
	else
		item->setFocus(false);

	onPositionChange();
}

void Container::setSpacing(int spacing)
{
	spacing_ = spacing;
	onPositionChange();
}

void Container::removeItems()
{
	focusedItem_ = 0;

	for (int i = 0; i < items_.size(); ++i)
	{
		delete items_[i];
	}
	items_.clear();
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
		switch (item->getAlignment())
		{
		case Alignment::Left:
			item->setPosition(getX(), lastY);
			break;

		case Alignment::Center:
			item->setPosition(getX() + getSize().x / 2 - item->getSize().x / 2, lastY);
			break;

		case Alignment::Right:
			item->setPosition(getX() + getSize().x - item->getSize().x, lastY);
			break;
		}

		
		lastY += spacing_+1;
	}
}

void Container::onSizeChange()
{
	onPositionChange();
}

void Container::focusUp()
{
	sounds_->play(SoundID::MenuMove);

	int newFocus = focusedItem_;
	while (newFocus > 0)
	{
		newFocus--;
		if (items_[newFocus]->isFocusable())
		{
			items_[focusedItem_]->setFocus(false);
			focusedItem_ = newFocus;
			items_[focusedItem_]->setFocus(true);
			break;
		}
	}

}

void Container::focusDown()
{
	sounds_->play(SoundID::MenuMove);

	int newFocus = focusedItem_;

	while (newFocus < items_.size()-1)
	{
		newFocus++;
		if (items_[newFocus]->isFocusable())
		{
			items_[focusedItem_]->setFocus(false);
			focusedItem_ = newFocus;
			items_[focusedItem_]->setFocus(true);
			break;
		}
	}
}

}