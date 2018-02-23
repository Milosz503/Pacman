#include "Button.h"

namespace GUI
{

Button::Button(std::wstring name, CharacterColor::Color color, std::function<void()> callback) :
	text_("  " + name, color),
	name_(name),
	callback_(callback)
{
	setSize(4 + name.length(), 1);
}

void Button::setCallback(std::function<void()> callback)
{
	callback_ = callback;
}


void Button::draw(ConsoleWindow * console)
{
	if (isFocused())
	{
		if(sf::Keyboard::isKeyPressed(sf::Keyboard::Return))
			text_.setText(" -" + name_ + "- ");
		else
			text_.setText("- " + name_ + " -");
	}
	else
		text_.setText("  " + name_);

	text_.setPosition(getPosition());
	console->draw(text_);
}

void Button::onEvent(sf::Event event)
{
	if (isFocused())
	{
		if (event.type == sf::Event::KeyReleased && event.key.code == sf::Keyboard::Return)
		{
			getSounds()->play(SoundID::MenuSelect);

			if (callback_ != nullptr)
				callback_();
		}
	}

}

}