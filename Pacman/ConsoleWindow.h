#pragma once

#include <SFML\Graphics.hpp>

#include "TextureManager.h"
#include "ConsoleTypes.h"
#include "ConsoleSprite.h"


class ConsoleWindow;





struct CText
{
	friend class ConsoleWindow;

	CText(std::wstring text, int x, int y) :
		text(text),
		posX(x),
		posY(y)
	{
		length = text.length();
	}

	void setText(std::wstring text)
	{
		this->text = text;
		length = text.length();
	}

private:
	std::wstring text;
	int posX;
	int posY;

	int length;
};


class ConsoleWindow
{
public:
	ConsoleWindow(unsigned width, unsigned height, TextureManager* textureManager);

	void setFontSize(unsigned size);
	unsigned getFontSize();

	void clear(sf::Color color = sf::Color::Black);
	void draw(ConsoleSprite& sprite);
	void draw(const CText & text);
	void draw(ConsoleCharacter& character);
	void draw(ConsoleText& consoleText);
	void show();

	void drawsf(const sf::Vertex *vertices, unsigned int vertexCount,
		sf::PrimitiveType type, const sf::RenderStates &states = sf::RenderStates::Default);

	void drawsf(const sf::Drawable& drawable, const sf::RenderStates& states = sf::RenderStates::Default);

	bool pollEvent(sf::Event& event);

	unsigned getWidth();
	unsigned getHeight();

	bool isOpen();
	void close();



	~ConsoleWindow();

private:

	unsigned width_;
	unsigned height_;

	unsigned fontHeight_;
	unsigned fontWidth_;

	sf::RenderWindow window_;

	TextureManager* textureManager_;

	sf::Font font_;
	sf::Texture tileset_;

	wchar_t** buffer_;
	sf::Color** colors_;
	sf::Color** background_;
	sf::Vector2i** textures_;


};

