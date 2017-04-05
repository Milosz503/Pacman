#include "ConsoleTypes.h"

void ConsoleObject::setBackground(const sf::Color& color)
{
	background_ = color;
}

sf::Color& ConsoleObject::getBackground()
{
	return background_;
}

void ConsoleObject::setPosition(const sf::Vector2i& position)
{
	position_ = position;
}

void ConsoleObject::setPosition(int x, int y)
{
	position_.x = x;
	position_.y = y;
}

sf::Vector2i ConsoleObject::getPosition()
{
	return position_;
}

int ConsoleObject::getX()
{
	return position_.x;
}

int ConsoleObject::getY()
{
	return position_.y;
}


// ----------------------------


ConsoleText::ConsoleText(std::wstring text, CharacterColor::Color color) :
	text_(text),
	color_(color)
{
}

void ConsoleText::setText(std::wstring text)
{
	text_ = text;
}

std::wstring ConsoleText::getText()
{
	return text_;
}

void ConsoleText::setColor(CharacterColor::Color color)
{
	color_ = color;
}

CharacterColor::Color ConsoleText::getColor()
{
	return color_;
}



// ------------------------------


ConsoleCharacter::ConsoleCharacter()
{
}

ConsoleCharacter::ConsoleCharacter(const TextureCharacter& texture) :
	character_(texture)
{
}


void ConsoleCharacter::setTexture(const TextureCharacter& texture)
{
	character_ = texture;
}


TextureCharacter ConsoleCharacter::getTexture()
{
	return character_;
}
