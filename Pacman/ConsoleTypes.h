#pragma once

#include "TextureManager.h"

#include <string>
#include <vector>


class ConsoleObject
{
public:

	void setBackground(sf::Color& color);
	sf::Color& getBackground();

	void setPosition(sf::Vector2i& position);
	void setPosition(int x, int y);

	sf::Vector2i& getPosition();
	int getX();
	int getY();

private:
	sf::Color background_ = sf::Color::Transparent;
	sf::Vector2i position_;
};



class ConsoleText : public ConsoleObject
{
public:
	ConsoleText(std::wstring text, sf::Color color = sf::Color::Black);

	void setText(std::wstring text);
	std::wstring getText();

	void setColor(sf::Color color);
	sf::Color getColor();

private:
	std::wstring text_;
	sf::Color color_;

};



class ConsoleCharacter : public ConsoleObject
{

public:
	ConsoleCharacter(TextureCharacter& texture);


	void setTexture(TextureCharacter& texture);

	TextureCharacter getTexture();


private:
	
	TextureCharacter character_;

};