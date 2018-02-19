#include "Item.h"

namespace GUI
{

Item::Item()
{
}


Item::~Item()
{
}

void Item::setPosition(int x, int y)
{
	position_.x = x;
	position_.y = y;

	onPositionChange();
}

int Item::getX()
{
	return position_.x;
}

int Item::getY()
{
	return position_.y;
}

const sf::Vector2i& Item::getPosition()
{
	return position_;
}

void Item::setSize(int width, int height)
{
	size_.x = width;
	size_.y = height;

	onSizeChange();
}


const sf::Vector2i& Item::getSize()
{
	return size_;
}

void Item::setFocus(bool isFocused)
{
	isFocused_ = isFocused;

	if (isFocused)
		onFocusGained();
	else
		onFocusLost();
}

bool Item::isFocused()
{
	return isFocused_;
}

void Item::handleEvent(sf::Event event)
{
	onEvent(event);
}

void Item::onFocusGained()
{
}

void Item::onFocusLost()
{
}

void Item::onSizeChange()
{
}

void Item::onPositionChange()
{
}

void Item::onEvent(sf::Event event)
{
}

}