#include "ConsoleWindow.h"

#include <iostream>

using namespace std;
using namespace sf;



ConsoleWindow::ConsoleWindow(unsigned width, unsigned height, TextureManager* textureManager) :
	width_(width),
	height_(height),
	fontHeight_(8),
	offsetX_(0),
	offsetY_(0),
	textureManager_(textureManager)
{

	

    if (!font_.loadFromFile("PxPlus_IBM_BIOS.ttf"))
	{
		cout << "ERROR";
	}


	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;

	window_.create(sf::VideoMode(width * fontWidth_, height * fontHeight_), "Bomberman");

	if (!texture_.create(width * fontWidth_, height * fontHeight_))
	{
		cout << "Error creating renderTexture!" << std::endl;
	}


	if (!shader_.loadFromFile("shader.frag", sf::Shader::Fragment))
	{
		cout << "Error shader!" << std::endl;
	}


    buffer_ = new wchar_t*[height_];
    colors_ = new Color*[height_];
	background_ = new Color*[height_];
	textures_ = new Vector2i*[height_];

	for (int i = 0; i < height; i++)
	{
		buffer_[i] = new wchar_t[width_ + 1];
		buffer_[i][width_] = '\n';

		colors_[i] = new Color[width_];
		background_[i] = new Color[width_];

		textures_[i] = new Vector2i[width_];
	}

}

void ConsoleWindow::setFontSize(unsigned size)
{
    fontHeight_ = size;

	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;


	window_.setSize(sf::Vector2u(width_ * fontWidth_, height_ * fontHeight_));
	window_.setView(sf::View(sf::FloatRect(0, 0, width_ * fontWidth_, height_ * fontHeight_)));
}

unsigned ConsoleWindow::getFontSize()
{
	return fontHeight_;
}

void ConsoleWindow::setOffset(int x, int y)
{
	offsetX_ = x;
	offsetY_ = y;
}

void ConsoleWindow::clear(Color color)
{
    for (int i = 0; i < width_; i++)
	{
		for (int j = 0; j < height_; ++j)
		{
			buffer_[j][i] = ' ';
			colors_[i][j] = Color::White;
			background_[i][j] = Color::Transparent;
			textures_[i][j] = Vector2i(15, 15);
		}
	}

	window_.clear(color);
	texture_.clear(Color::Transparent);
}




void ConsoleWindow::draw(ConsoleCharacter & character)
{

	int x = character.getX() + offsetX_;
	int y = character.getY() + offsetY_;

	if (x >= 0 && x < width_ 
		&&	y >= 0 && y < height_)
	{
		textures_[y][x] = character.getTexture().rect;
		background_[y][x] = character.getTexture().backgroundColor;
	}

	character.draw();
}

void ConsoleWindow::draw(ConsoleText & consoleText)
{
	int x = consoleText.getX() + offsetX_;
	int y = consoleText.getY() + offsetY_;

	std::wstring text = consoleText.getText();

	if (y >= 0 && y < height_)
	{
		for (int i = 0; i < text.length() && i + x < width_; ++i)
		{
			TextureCharacter& texture = textureManager_->getTexture(text[i], consoleText.getColor());

			textures_[y][i+x] = texture.rect;
			background_[y][i + x] = consoleText.getBackground();
		}
	}

	consoleText.draw();

}

void ConsoleWindow::show()
{


	sf::Text output;
	output.setFont(font_);
	output.setCharacterSize(fontHeight_);
	output.setFillColor(sf::Color(200, 200, 200));

	RectangleShape background(Vector2f(fontWidth_, fontHeight_));

	

	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;

	sf::VertexArray tiles(sf::Quads, width_*height_*4);
	sf::VertexArray tilesTex(sf::Quads, width_*height_ * 4);




	for (int i = 0; i < height_; ++i)
	{
		for (int j = 0; j < width_; ++j)
		{

			Vertex* tile = &tiles[(i + j*height_)*4];

			tile[0].position = sf::Vector2f(j*fontWidth_, i*fontHeight_);
			tile[3].position = sf::Vector2f(j*fontWidth_, (i+1) * fontHeight_);
			tile[1].position = sf::Vector2f((j+1)*fontWidth_, i * fontHeight_);
			tile[2].position = sf::Vector2f((j+1)*fontWidth_, (i+1) * fontHeight_);


			if (buffer_[i][j] == ' ')
			{
				tile[0].color = background_[i][j];
				tile[1].color = background_[i][j];
				tile[2].color = background_[i][j];
				tile[3].color = background_[i][j];
			}
			else
			{
				tile[0].color = background_[i][j];
				tile[1].color = background_[i][j];
				tile[2].color = background_[i][j];
				tile[3].color = background_[i][j];

				output.setString(buffer_[i][j]);
				output.setPosition(j*fontWidth_, i * fontHeight_);
				output.setFillColor(colors_[i][j]);

				window_.draw(output);
			}

			Vertex* tileTex = &tilesTex[(i + j*height_) * 4];

			tileTex[0].position = sf::Vector2f(j*fontWidth_, i*fontHeight_);
			tileTex[3].position = sf::Vector2f(j*fontWidth_, (i + 1) * fontHeight_);
			tileTex[1].position = sf::Vector2f((j + 1)*fontWidth_, i * fontHeight_);
			tileTex[2].position = sf::Vector2f((j + 1)*fontWidth_, (i + 1) * fontHeight_);

			

			tileTex[0].texCoords = Vector2f(textures_[i][j].x*9, textures_[i][j].y*9 + 1);
			tileTex[1].texCoords = Vector2f((textures_[i][j].x) * 9 + 8, textures_[i][j].y * 9 + 1);
			tileTex[2].texCoords = Vector2f((textures_[i][j].x)*9+8, (textures_[i][j].y)*9+8 + 1);
			tileTex[3].texCoords = Vector2f(textures_[i][j].x * 9, (textures_[i][j].y)*9+8 + 1);
			

			

			//background.setPosition(j*fontWidth_, i * fontHeight_ + fontHeight_ / 8);
			//background.setFillColor(background_[i][j]);

			//window_.draw(background);
			
		}

	}
	window_.draw(tiles);

	texture_.draw(tilesTex, &textureManager_->getTileset());
	texture_.display();


	Sprite sprite(texture_.getTexture());
	sprite.setPosition(0, 0);

	shader_.setUniform("texture", sf::Shader::CurrentTexture);
	shader_.setUniform("width", (float)(width_ * fontWidth_));
	shader_.setUniform("resolution", sf::Vector2f(width_ * fontWidth_, height_ * fontHeight_));
	window_.draw(sprite, &shader_);


	window_.display();



	
}

void ConsoleWindow::drawsf(const Vertex * vertices, unsigned int vertexCount, PrimitiveType type, const RenderStates & states)
{
	window_.draw(vertices, vertexCount, type, states);
}

void ConsoleWindow::drawsf(const Drawable & drawable, const RenderStates & states)
{
	window_.draw(drawable, states);
}

bool ConsoleWindow::pollEvent(Event & event)
{
	{
		bool answer = window_.pollEvent(event);
	
		return answer;
	
	
	}
}

unsigned ConsoleWindow::getWidth()
{
	return width_;
}

unsigned ConsoleWindow::getHeight()
{
	return height_;
}

bool ConsoleWindow::isOpen()
{
	return window_.isOpen();
}

void ConsoleWindow::close()
{
	window_.close();
}

sf::RenderWindow* ConsoleWindow::getWindow()
{
	return &window_;
}



ConsoleWindow::~ConsoleWindow()
{
}
