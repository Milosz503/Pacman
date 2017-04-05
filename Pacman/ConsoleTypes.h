#pragma once

#include "TextureManager.h"

#include <string>
#include <vector>


class ConsoleObject
{
public:

	void setBackground(const sf::Color& color);
	sf::Color& getBackground();

	void setPosition(const sf::Vector2i& position);
	void setPosition(int x, int y);

	sf::Vector2i getPosition();
	int getX();
	int getY();

private:
	sf::Color background_ = sf::Color::Transparent;
	sf::Vector2i position_;
};



class ConsoleText : public ConsoleObject
{
public:
	ConsoleText(std::wstring text, CharacterColor::Color color = CharacterColor::White);

	void setText(std::wstring text);
	std::wstring getText();

	void setColor(CharacterColor::Color color);
	CharacterColor::Color getColor();

private:
	std::wstring text_;
	CharacterColor::Color color_;

};



class ConsoleCharacter : public ConsoleObject
{

public:
	ConsoleCharacter();
	ConsoleCharacter(const TextureCharacter& texture);


	void setTexture(const TextureCharacter& texture);

	TextureCharacter getTexture();


private:
	
	TextureCharacter character_;

};