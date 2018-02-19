#pragma once

#include <SFML\System\Vector2.hpp>
#include <SFML\Window\Event.hpp>
#include "ConsoleWindow.h"

namespace GUI
{

class Item
{
public:
	Item();
	~Item();

	void setPosition(int x, int y);
	int getX();
	int getY();
	const sf::Vector2i& getPosition();

	void setSize(int width, int height);
	const sf::Vector2i& getSize();

	void setFocus(bool isFocused);
	bool isFocused();

	void handleEvent(sf::Event event);

	virtual void draw(ConsoleWindow* console) = 0;

protected:
	virtual void onFocusGained();
	virtual void onFocusLost();
	virtual void onSizeChange();
	virtual void onPositionChange();
	virtual void onEvent(sf::Event event);

private:
	bool isFocusable_;
	bool isFocused_;

	sf::Vector2i position_;
	sf::Vector2i size_;
};

}