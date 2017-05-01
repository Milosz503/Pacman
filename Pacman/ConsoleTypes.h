#pragma once

#include "TextureManager.h"

#include <string>
#include <vector>


class ConsoleObject
{
public:

	ConsoleObject();

	void setPosition(const sf::Vector2i& position);
	void setPosition(int x, int y);

	void move(int x, int y);
	void move(const sf::Vector2i& offset);

	sf::Vector2i getPosition();
	int getX() const;
	int getY() const;

private:
	
	sf::Vector2i position_;
};



class ConsoleText : public ConsoleObject
{
public:
	ConsoleText(std::wstring text = L"", CharacterColor::Color color = CharacterColor::White);

	void setText(std::wstring text);
	std::wstring getText();

	void setColor(CharacterColor::Color color);
	CharacterColor::Color getColor();

	void setBackground(const sf::Color& color);
	sf::Color& getBackground();

private:
	std::wstring text_;
	CharacterColor::Color color_;

	sf::Color background_;

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