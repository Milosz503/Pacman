#pragma once

#include "Item.h"
#include <string>
#include <functional>


namespace GUI
{

class Button : public Item
{
public:
	Button(std::wstring name, CharacterColor::Color color = CharacterColor::White, std::function<void()> callback = nullptr);
	


	virtual void draw(ConsoleWindow* console) override;

protected:
	virtual void onEvent(sf::Event event);

private:
	SoundPlayer * sounds_;
	ConsoleText text_;
	std::wstring name_;
	std::function<void()> callback_;
};

}