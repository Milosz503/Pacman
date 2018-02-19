#include "Button.h"

namespace GUI
{

Button::Button(std::wstring name, CharacterColor::Color color) :
	text_(name, color)
{

}

void Button::draw(ConsoleWindow * console)
{
	if (isFocused())
		text_.setColor(CharacterColor::Red);
	else
		text_.setColor(CharacterColor::Cyan);

	text_.setPosition(getPosition());
	console->draw(text_);
}

}