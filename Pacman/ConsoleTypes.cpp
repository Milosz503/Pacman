#include "ConsoleTypes.h"



ConsoleObject::ConsoleObject() :
	position_(0, 0)
{
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

void ConsoleObject::move(int x, int y)
{
	position_.x += x;
	position_.y += y;
}

void ConsoleObject::move(const sf::Vector2i& offset)
{
	position_ += offset;
}

sf::Vector2i ConsoleObject::getPosition()
{
	return position_;
}

int ConsoleObject::getX() const
{
	return position_.x;
}

int ConsoleObject::getY() const
{
	return position_.y;
}

void ConsoleObject::draw(ConsoleWindow & console)
{
}



// ----------------------------


ConsoleText::ConsoleText(std::wstring text, CharacterColor::Color color) :
	text_(text),
	color_(color),
	background_(sf::Color::Transparent)
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

void ConsoleText::setBackground(const sf::Color& color)
{
	background_ = color;
}

sf::Color& ConsoleText::getBackground()
{
	return background_;
}

int ConsoleText::getWidth()
{
	return text_.length();
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
