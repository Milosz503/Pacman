#pragma once


#include <SFML\Graphics.hpp>
#include <vector>
#include <array>

struct TextureCharacter 
{
	sf::Vector2i rect;
	sf::Color backgroundColor = sf::Color::Transparent;
};





class TextureManager
{
public:

	enum Textures {Player, PlayerInv, Wall, Border,
		ProjectileLeft, ProjectileUp, ProjectileRight, ProjectileDown,
		Bomb, Explosion, None, TextureCount};

	enum CharacterColor : unsigned int { White = 0, Green, ColorCount };


	void loadTextures();

	TextureCharacter getTexture(wchar_t c, CharacterColor color);
	TextureCharacter getTexture(Textures texture);

	sf::Texture& getTileset();


	void generateTileset();



private:
	const int fontHeight_ = 8;

	std::array<TextureCharacter, TextureCount> textures;

	sf::Texture tileset_;
	

	void drawTileset(sf::Color color, int offset, sf::RenderTexture* texture);


};

