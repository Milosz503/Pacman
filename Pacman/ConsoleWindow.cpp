#include "ConsoleWindow.h"

#include <iostream>

using namespace std;
using namespace sf;



ConsoleWindow::ConsoleWindow(unsigned width, unsigned height, TextureManager* textureManager, string title) :
	width_(width),
	height_(height),
	fontHeight_(textureManager->getFontHeight()),
	fontWidth_(textureManager->getFontHeight()),
	offsetX_(0),
	offsetY_(0),
	textureManager_(textureManager)
{
	
	

    if (!font_.loadFromFile("PxPlus_IBM_BIOS.ttf"))
	{
		cout << "ERROR";
	}


	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;

	window_.create(sf::VideoMode(width * fontWidth_*2, height * fontHeight_*2), title);//, Style::Fullscreen);
	window_.clear(Color::Black);
	window_.display();

	int w = window_.getSize().x;
	int h = window_.getSize().y;
	float scale1 = w / (float)(width* fontWidth_);
	float scale2 = h / (float)(height * fontHeight_);

	setScale(2);

	/*if (scale1 < scale2)
		setScale(scale1);
	else
		setScale(scale2);*/

	cout << "Font: " << scale_ << " - " << fontWidth_ << " " << fontHeight_ << "\n";


	if (!shader_.loadFromFile("shader.frag", sf::Shader::Fragment))
	{
		cout << "Error loading shader!" << std::endl;
	}


	background_.resize(height_);
	textures_.resize(height_);

	for (int i = 0; i < height; i++)
	{

		background_[i].resize(width_);

		textures_[i].resize(width_);
	}
}

//void ConsoleWindow::setFontSize(unsigned size)
//{
//    fontHeight_ = size;
//
//	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;
//
//	
//	//window_.setSize(sf::Vector2u(width_ * fontWidth_, height_ * fontHeight_));
//	//window_.setView(sf::View(sf::FloatRect(0, 0, width_ * fontWidth_, height_ * fontHeight_)));
//
//	if (!texture_.create(width_ * fontWidth_, height_ * fontHeight_))
//	{
//		cout << "Error creating renderTexture!" << std::endl;
//	}
//	if (!customTexture_.create(width_ * fontWidth_, height_ * fontHeight_))
//	{
//		cout << "Error creating renderTexture!" << std::endl;
//	}
//
//	updatePosition();
//}

void ConsoleWindow::setScale(float scale)
{
	fontWidth_ = textureManager_->getFontWidth() * scale;
	fontHeight_ = textureManager_->getFontHeight() * scale;

	if (scale - (int)scale != 0 && fontWidth_ - (int)fontWidth_ == 0)
	{
		scale -= 0.01;
		fontWidth_ = textureManager_->getFontWidth() * scale;
		fontHeight_ = textureManager_->getFontHeight() * scale;
	}
	scale_ = scale;

	if (!texture_.create(width_ * fontWidth_, height_ * fontHeight_))
	{
		cout << "Error creating renderTexture!" << std::endl;
	}
	if (!customTexture_.create(width_ * fontWidth_, height_ * fontHeight_))
	{
		cout << "Error creating renderTexture!" << std::endl;
	}

	window_.setSize(sf::Vector2u(width_ * fontWidth_, height_ * fontHeight_));
	window_.setView(sf::View(sf::FloatRect(0, 0, width_ * fontWidth_, height_ * fontHeight_)));

	updatePosition();


}

float ConsoleWindow::getScale()
{
	return scale_;
}

float ConsoleWindow::getFontSize()
{
	return fontHeight_;
}

void ConsoleWindow::setOffset(int x, int y)
{
	offsetX_ = x;
	offsetY_ = y;
}

sf::Vector2i ConsoleWindow::getOffset()
{
	return Vector2i(offsetX_, offsetY_);
}

sf::Vector2i ConsoleWindow::getPosition()
{
	return Vector2i(startX_, startY_);
}

void ConsoleWindow::clear(Color color)
{
    for (int i = 0; i < height_; i++)
	{
		for (int j = 0; j < width_; ++j)
		{
			background_[i][j] = Color::Transparent;
			textures_[i][j] = Vector2i(15, 15);
		}
	}

	window_.clear(color);
	texture_.clear(Color::Transparent);
	customTexture_.clear(Color::Transparent);
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

	character.draw(*this);
}

void ConsoleWindow::draw(ConsoleText & consoleText)
{
	int x = consoleText.getX() + offsetX_;
	int y = consoleText.getY() + offsetY_;

	std::wstring text = consoleText.getText();

	if (y >= 0 && y < height_)
	{
		for (int i = 0; i < text.length() && i + x < (int)width_; ++i)
		{
			
			if (x + i < 0)
				continue;

			TextureCharacter& texture = textureManager_->getTexture(text[i], consoleText.getColor());

			textures_[y][i+x] = texture.rect;
			background_[y][i + x] = consoleText.getBackground();
		}
	}

	consoleText.draw(*this);

}

void ConsoleWindow::draw(ConsoleObject & consoleObject)
{
	consoleObject.draw(*this);
}

void ConsoleWindow::show()
{


	/*sf::Text output;
	output.setFont(font_);
	output.setCharacterSize(fontHeight_);
	output.setFillColor(sf::Color(200, 200, 200));

	RectangleShape background(Vector2f(fontWidth_, fontHeight_));

	

	fontWidth_ = font_.getGlyph(L'W', fontHeight_, false).advance;*/

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


			//if (buffer_[i][j] == ' ')
			//{
				tile[0].color = background_[i][j];
				tile[1].color = background_[i][j];
				tile[2].color = background_[i][j];
				tile[3].color = background_[i][j];
			//}
			//else
			//{
			//	tile[0].color = background_[i][j];
			//	tile[1].color = background_[i][j];
			//	tile[2].color = background_[i][j];
			//	tile[3].color = background_[i][j];

			//	output.setString(buffer_[i][j]);
			//	output.setPosition(j*fontWidth_, i * fontHeight_);
			//	output.setFillColor(colors_[i][j]);

			//	window_.draw(output);
			//}

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
	//texture_.draw(tiles);
	texture_.draw(tilesTex, &textureManager_->getTileset());
	texture_.display();


	Sprite sprite(texture_.getTexture());
	sprite.setPosition(startX_, startY_);

	shader_.setUniform("texture", sf::Shader::CurrentTexture);
	shader_.setUniform("resolution", sf::Vector2f(width_ * fontWidth_, height_ * fontHeight_));
	window_.draw(sprite, &shader_);
	//window_.draw(sprite);


	//sfml additional texture


	customTexture_.display();
	sprite.setTexture(customTexture_.getTexture());
	window_.draw(sprite);


	



	
}

void ConsoleWindow::display()
{
	window_.display();
}

void ConsoleWindow::drawsf(const Vertex * vertices, unsigned int vertexCount, PrimitiveType type, const RenderStates & states)
{
	customTexture_.draw(vertices, vertexCount, type, states);
}

void ConsoleWindow::drawsf(const Drawable & drawable, const RenderStates & states)
{
	customTexture_.draw(drawable, states);
}

bool ConsoleWindow::pollEvent(Event & event)
{
		bool answer = window_.pollEvent(event);
	
		if (event.type == sf::Event::Resized)
		{
			window_.setView(sf::View(sf::FloatRect(0, 0, event.size.width, event.size.height)));
			updatePosition();
		}

		return answer;
	
	
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

void ConsoleWindow::loadingScreen(int progress)
{
	clear(Color::Black);

	std::wstring loading = L"LOADING";

	for (int i = 0; i < progress; ++i)
	{
		loading += L".";
	}

	ConsoleText text(loading, CharacterColor::White);

	text.setPosition((width_ - 10) / 2, height_ / 2);

	draw(text);

	show();
	display();

}



ConsoleWindow::~ConsoleWindow()
{
}

void ConsoleWindow::updatePosition()
{
	Vector2u size = window_.getSize();


	startX_ = ((int)(size.x) - (int)(width_*fontWidth_)) / 2;
	startY_ = ((int)(size.y) - (int)(height_*fontHeight_)) / 2;

	std::cout << "Pos: " << "  -  " << startX_ << " " << startY_ << "\n";
}
