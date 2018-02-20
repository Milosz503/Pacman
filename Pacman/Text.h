#pragma once
#include "Item.h"

namespace GUI
{

class Text : public Item
{
public:
	Text(std::wstring text, CharacterColor::Color color = CharacterColor::White);

	virtual void draw(ConsoleWindow* console);

private:
	ConsoleText text_;
};


}