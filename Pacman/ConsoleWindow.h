#pragma once

#include <SFML\Graphics.hpp>

#include "TextureManager.h"
#include "ConsoleTypes.h"
#include "ConsoleSprite.h"


class ConsoleWindow;






class ConsoleWindow
{
public:
	ConsoleWindow(unsigned width, unsigned height, TextureManager* textureManager, std::string title);

	void setFontSize(unsigned size);
	unsigned getFontSize();

	void setOffset(int x, int y);

	void clear(sf::Color color = sf::Color::Black);
	void draw(ConsoleCharacter& character);
	void draw(ConsoleText& consoleText);
	void show();
	void display();

	void drawsf(const sf::Vertex *vertices, unsigned int vertexCount,
		sf::PrimitiveType type, const sf::RenderStates &states = sf::RenderStates::Default);

	void drawsf(const sf::Drawable& drawable, const sf::RenderStates& states = sf::RenderStates::Default);

	bool pollEvent(sf::Event& event);

	unsigned getWidth();
	unsigned getHeight();

	bool isOpen();
	void close();

	sf::RenderWindow* getWindow();



	~ConsoleWindow();

private:

	unsigned width_;
	unsigned height_;

	unsigned fontHeight_;
	unsigned fontWidth_;

	int offsetX_;
	int offsetY_;


	sf::RenderTexture texture_;
	sf::RenderWindow window_;

	sf::Shader shader_;

	TextureManager* textureManager_;

	sf::Font font_;
	sf::Texture tileset_;

	wchar_t** buffer_;
	sf::Color** colors_;
	sf::Color** background_;
	sf::Vector2i** textures_;


};

