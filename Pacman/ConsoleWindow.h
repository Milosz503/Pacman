#pragma once

#include <SFML\Graphics.hpp>

#include "TextureManager.h"
#include "ConsoleTypes.h"
#include "ConsoleSprite.h"
#include <vector>

class ConsoleWindow;






class ConsoleWindow
{
public:
	ConsoleWindow(unsigned width, unsigned height, TextureManager* textureManager, std::string title);

	//void setFontSize(unsigned size);
	void setScale(float scale);
	float getScale();
	float getFontSize();
	

	void setOffset(int x, int y);
	sf::Vector2i getOffset();
	sf::Vector2i getPosition();

	void setFullscreen(bool isFullscreen);
	bool isFullscreen();

	void clear(sf::Color color = sf::Color::Black);
	void draw(ConsoleCharacter& character);
	void draw(ConsoleText& consoleText);
	void draw(ConsoleObject& consoleObject);
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
	

	void loadingScreen(int progress);


	~ConsoleWindow();

private:

	std::string title_;
	bool isFullscreen_;

	unsigned width_;
	unsigned height_;
	int startX_;
	int startY_;

	float fontHeight_;
	float fontWidth_;
	float scale_;

	int offsetX_;
	int offsetY_;

	sf::VertexArray tiles;
	sf::VertexArray tilesTex;

	sf::RenderTexture texture_;
	sf::RenderTexture customTexture_;
	sf::RenderWindow window_;

	//sf::Shader shader_;

	TextureManager* textureManager_;

	//sf::Font font_;
	sf::Texture tileset_;


	std::vector<std::vector<sf::Color>> background_;
	std::vector<std::vector<sf::Vector2i>> textures_;

	void updatePosition();


};

