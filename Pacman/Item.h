#pragma once

#include <SFML\System\Vector2.hpp>
#include <SFML\Window\Event.hpp>
#include "ConsoleWindow.h"
#include "SoundPlayer.h"

namespace GUI
{
	enum class Alignment {Left, Center, Right};

class Item
{
public:
	Item(bool isFocusable = true);
	~Item();

	void setSounds(SoundPlayer* sounds);

	void setPosition(int x, int y);
	int getX();
	int getY();
	const sf::Vector2i& getPosition();

	void setSize(int width, int height);
	const sf::Vector2i& getSize();

	void setFocus(bool isFocused);
	bool isFocused();
	bool isFocusable();

	void setAlignment(Alignment alignment);
	Alignment getAlignment();

	void handleEvent(sf::Event event);

	virtual void draw(ConsoleWindow* console) = 0;

protected:
	virtual void onFocusGained();
	virtual void onFocusLost();
	virtual void onSizeChange();
	virtual void onPositionChange();
	virtual void onEvent(sf::Event event);

	SoundPlayer* getSounds();
private:
	SoundPlayer * sounds_;
	bool isFocusable_;
	bool isFocused_;
	Alignment alignment_;

	sf::Vector2i position_;
	sf::Vector2i size_;
};

}