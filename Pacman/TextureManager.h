#pragma once


#include <SFML\Graphics.hpp>
#include <vector>
#include <array>

struct TextureCharacter 
{
	sf::Vector2i rect = sf::Vector2i(15, 15);
	sf::Color backgroundColor = sf::Color::Transparent;
};




namespace CharacterColor
{
	enum Color : unsigned int { White = 0, Red, Green, Blue, Yellow, Grey, DarkGrey, LightGrey, Count };
}


class TextureManager
{
public:



	void loadTextures();

	static TextureCharacter getTexture(wchar_t c, CharacterColor::Color color);

	sf::Texture& getTileset();


	void generateTileset();



private:
	const int fontHeight_ = 8;


	sf::Texture tileset_;
	

	void drawTileset(sf::Color color, int offset, sf::RenderTexture* texture);


};

