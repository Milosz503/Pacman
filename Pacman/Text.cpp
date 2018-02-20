#include "Text.h"

GUI::Text::Text(std::wstring text, CharacterColor::Color color) :
	Item(false),
	text_(text, color)
{
	setSize(text.length(), 1);
	
}

void GUI::Text::draw(ConsoleWindow * console)
{
	text_.setPosition(getPosition());

	console->draw(text_);
}
