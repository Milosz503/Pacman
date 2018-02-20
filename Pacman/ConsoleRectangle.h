#pragma once
#include "ConsoleTypes.h"
class ConsoleRectangle : public ConsoleObject
{
public:
	ConsoleRectangle(int x, int y, int width, int height, TextureCharacter texture);
	~ConsoleRectangle();

	void setSize(int width, int height);
	void setTexture(TextureCharacter texture);

	void setFill(bool isFilled);

	virtual void draw(ConsoleWindow& consoleWindow);

private:
	int width_;
	int height_;
	TextureCharacter texture_;
	bool isFilled_;
};

