#pragma once

#include <SFML\Graphics.hpp>

#include "TextureManager.h"
#include "ConsoleTypes.h"
#include "ConsoleSprite.h"

using namespace sf;

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
	ConsoleWindow(unsigned width, unsigned height);

	void setFontSize(unsigned size);

	void clear(Color color = Color::Black);
	void draw(ConsoleSprite& sprite);
	void draw(const CText & text);
	void draw(ConsoleCharacter& character);
	void show();

	void drawsf(const Vertex *vertices, unsigned int vertexCount,
		PrimitiveType type, const RenderStates &states = RenderStates::Default);

	void drawsf(const Drawable& drawable, const RenderStates& states = RenderStates::Default);

	bool pollEvent(Event& event);

	unsigned getWidth();
	unsigned getHeight();



	~ConsoleWindow();

private:

	unsigned width_;
	unsigned height_;

	unsigned fontHeight_;
	unsigned fontWidth_;

	RenderWindow window_;

	Font font_;
	Texture tileset_;

	wchar_t** buffer_;
	Color** colors_;
	Color** background_;
	Vector2i** textures_;


};

