#pragma once


#include <SFML/Graphics.hpp>
#include "TextureManager.h"

using namespace sf;


class ConsoleSprite
{
public:
	ConsoleSprite(unsigned width, unsigned height, int x, int y);


	void setPosition(int x, int y);
	
	void setTexture(TextureManager::Textures texture);
	void fill(wchar_t character, Color color = Color::White, Color background = Color::Blue);

	unsigned getWidth();
	unsigned getHeight();
	int getX();
	int getY();

	 wchar_t getCharacter(unsigned x, unsigned y);
	 Color getColor(unsigned x, unsigned y);
	 Color getBackgroundColor(unsigned x, unsigned y);

	 TextureManager::Textures getTexture();

	~ConsoleSprite();

protected:

	unsigned width_;
	unsigned height_;

	int x_;
	int y_;


	wchar_t** image_;
	Color** colors_;
	Color** background_;

	TextureManager::Textures texture_;


};

