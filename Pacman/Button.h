#pragma once

#include "Item.h"
#include <string>

namespace GUI
{

class Button : public Item
{
public:
	Button(std::wstring name, CharacterColor::Color color = CharacterColor::White);

	virtual void draw(ConsoleWindow* console) override;

private:
	ConsoleText text_;

};

}