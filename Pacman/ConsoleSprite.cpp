#include "ConsoleSprite.h"



ConsoleSprite::ConsoleSprite(unsigned width, unsigned height, int x, int y) :
	width_(width),
	height_(height),
	x_(x),
	y_(y),
	texture_(Textures::Wall)
{


	image_ = new wchar_t*[width_];
	colors_ = new Color*[width_];
	background_ = new Color*[width_];

	for (unsigned x = 0; x < width_; ++x)
	{
		image_[x] = new wchar_t[height_];
		background_[x] = new Color[height_];
		colors_[x] = new Color[height_];

		for (unsigned y = 0; y < height_; ++y)
		{
			background_[x][y] = Color::Transparent;
			colors_[x][y] = Color::White;
		}
	}


}


void ConsoleSprite::setPosition(int x, int y)
{
	x_ = x;
	y_ = y;
}

void ConsoleSprite::setTexture(Textures::ID texture)
{
	texture_ = texture;
}

void ConsoleSprite::fill(wchar_t character, Color color, Color background)
{

	for (unsigned x = 0; x < width_; ++x)
	{
		for (unsigned y = 0; y < height_; ++y)
		{
			image_[x][y] = character;
			colors_[x][y] = color;
			background_[x][y] = background;
		}
	}

}

unsigned ConsoleSprite::getWidth()
{
	return width_;
}

unsigned ConsoleSprite::getHeight()
{
	return height_;
}

int ConsoleSprite::getX()
{
	return x_;
}

int ConsoleSprite::getY()
{
	return y_;
}

wchar_t ConsoleSprite::getCharacter(unsigned x, unsigned y)
{
#ifdef _DEBUG
	if (x >= width_ || y >= height_)
	{
		//DBGOUT("ERROR: range x, y:(" << x << " " << y << ") w, h:(" << width_ << " " << height_ << ")");
		return L' ';
	}
#endif

	return image_[x][y];
}

Color ConsoleSprite::getColor(unsigned x, unsigned y)
{
#ifdef _DEBUG
	if (x >= width_ || y >= height_)
	{
		//DBGOUT("ERROR: range x, y:(" << x << " " << y << ") w, h:(" << width_ << " " << height_ << ")");
		return Color::White;
	}
#endif

	return colors_[x][y];
}

Color ConsoleSprite::getBackgroundColor(unsigned x, unsigned y)
{
#ifdef _DEBUG
	if (x >= width_ || y >= height_)
	{
		//DBGOUT("ERROR: range x, y:(" << x << " " << y << ") w, h:(" << width_ << " " << height_ << ")");
		return Color::Transparent;
	}
#endif

	return background_[x][y];
}

Textures::ID ConsoleSprite::getTexture()
{
	return texture_;
}

ConsoleSprite::~ConsoleSprite()
{
	for (unsigned x = 0; x < width_; ++x)
	{
		delete[] image_[x];
		delete[] background_[x];
	}

	delete image_;
	delete background_;

}

