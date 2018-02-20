#include "ConsoleRectangle.h"
#include "ConsoleWindow.h"




ConsoleRectangle::ConsoleRectangle(int x, int y, int width, int height, TextureCharacter texture) :
	texture_(texture),
	isFilled_(false)
{
	setPosition(x, y);
	width_ = width;
	height_ = height;
}

ConsoleRectangle::~ConsoleRectangle()
{
}

void ConsoleRectangle::setSize(int width, int height)
{
	width_ = width;
	height_ = height;
}

void ConsoleRectangle::setTexture(TextureCharacter texture)
{
	texture_ = texture;
}

void ConsoleRectangle::setFill(bool isFilled)
{
	isFilled_ = isFilled;
}



void ConsoleRectangle::draw(ConsoleWindow & console)
{
	ConsoleCharacter cell(texture_);

	//outline
	for (int x = 0; x < width_; ++x)
	{
		cell.setPosition(getX() + x, getY());
		console.draw(cell);

		cell.setPosition(getX() + x, getY() + height_-1);
		console.draw(cell);
	}

	for (int y = 1; y < height_-1; ++y)
	{
		cell.setPosition(getX(), getY() + y);
		console.draw(cell);

		cell.setPosition(getX() + width_-1, getY() + y);
		console.draw(cell);
	}


	//fill
	if (!isFilled_)
		return;
	for (int x = 1; x < width_ - 1; ++x)
	{
		for (int y = 1; y < height_ - 1; ++y)
		{
			cell.setPosition(getX() + x, getY() + y);
			console.draw(cell);
		}
	}
}
