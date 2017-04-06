#pragma once


#include <SFML\Graphics.hpp>
#include <vector>
#include <array>

struct TextureCharacter 
{
	sf::Vector2i rect = sf::Vector2i(15, 15);
	sf::Color backgroundColor = sf::Color::Transparent;
};


namespace Textures
{
	enum ID {
		Player, PlayerInv, Wall, Border, Point,
		ProjectileLeft, ProjectileUp, ProjectileRight, ProjectileDown,
		Bomb, Explosion, None, Count
	};
}

namespace CharacterColor
{
	enum Color : unsigned int { White = 0, Red, Green, Blue, Grey, DarkGrey, LightGrey, Count };
}


class TextureManager
{
public:



	void loadTextures();

	TextureCharacter getTexture(wchar_t c, CharacterColor::Color color);
	TextureCharacter getTexture(Textures::ID texture);

	sf::Texture& getTileset();


	void generateTileset();



private:
	const int fontHeight_ = 8;

	std::array<TextureCharacter, Textures::Count> textures;

	sf::Texture tileset_;
	

	void drawTileset(sf::Color color, int offset, sf::RenderTexture* texture);


};

