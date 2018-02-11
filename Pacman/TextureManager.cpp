#include "TextureManager.h"

#include <iostream>




//
//void TextureManager::generateTileset(std::vector<sf::Color> colors)
//{
//	RenderTexture tileset;
//	tileset.create(144, 144*colors.size());
//
//	tileset.clear(Color::Transparent);
//
//	for (int i = 0; i < colors.size(); ++i)
//	{
//
//		drawTileset(colors[i], i*144, &tileset);
//	}
//
//
//
//
//	tileset.display();
//	if (!tileset.getTexture().copyToImage().saveToFile("tileset.png"))
//	{
//		std::cout << "ERROR SAVE";
//	}
//}

void TextureManager::loadTextures()
{
	if (!tileset_.loadFromFile("tileset.png"))
		std::cout << "ERROR LOAD TEXTURE" << std::endl;


}

TextureCharacter TextureManager::getTexture(wchar_t c, CharacterColor::Color color)
{
	TextureCharacter texture;

	wchar_t startChar = L'\u0021';
	wchar_t endChar = L'\u007F';

	if (c >= L'\u0021' && c <= L'\u007F')
	{
		texture.rect.x = (c - startChar) % 16;
		texture.rect.y = (c - startChar) / 16 + color * 16;
	}
	else if (c == L' ')
	{
		texture.rect.x = 15;
		texture.rect.y = 15;
	}
	else
	{
		texture.rect.x = 11;
		texture.rect.y = 12;
	}

	return texture;
}



sf::Texture& TextureManager::getTileset()
{
	return tileset_;
}

void TextureManager::generateTileset()
{
	std::array<sf::Color, CharacterColor::Count> colors;

	colors[CharacterColor::White] = sf::Color::White;
	colors[CharacterColor::Red] = sf::Color::Red;
	colors[CharacterColor::Green] = sf::Color::Green;
	colors[CharacterColor::Blue] = sf::Color::Blue;
	colors[CharacterColor::Yellow] = sf::Color::Yellow;
	colors[CharacterColor::Grey] = sf::Color(128, 128, 128);
	colors[CharacterColor::DarkGrey] = sf::Color(64, 64, 64);
	colors[CharacterColor::LightGrey] = sf::Color(192, 192, 192);
	colors[CharacterColor::Pink] = sf::Color(255, 128, 255);
	colors[CharacterColor::Cyan] = sf::Color(0, 255, 255);

	sf::RenderTexture tileset;
	tileset.create(144, 144 * CharacterColor::Count);

	tileset.clear(sf::Color::Transparent);

	for (int i = 0; i < CharacterColor::Count; ++i)
	{

		drawTileset(colors[i], i * 144, &tileset);
	}




	tileset.display();
	if (!tileset.getTexture().copyToImage().saveToFile("tileset.png"))
	{
		std::cout << "ERROR SAVE";
	}
}

void TextureManager::drawTileset(sf::Color color, int offset, sf::RenderTexture * texture)
{
	sf::Font font;
	if (!font.loadFromFile("PxPlus_IBM_BIOS.ttf"))
	{
		std::cout << "ERROR FONT LOAD";
	}

	sf::Text output;
	output.setFont(font);
	output.setCharacterSize(fontHeight_);
	output.setFillColor(color);



	wchar_t character = L'!';

	wchar_t tab[250] = { L'\u2580', L'\u2581', L'\u2584', L'\u2588', L'\u258C', L'\u2590', L'\u2591', L'\u2592',
		L'\u2593', L'\u25A0', L'\u25A1', L'\u25AA', L'\u25AB', L'\u25AC', L'\u25B2', L'\u25BA',
		L'\u25BC', L'\u25C4', L'\u25C6', L'\u25CA', L'\u25CB', L'\u25CF', L'\u25D8', L'\u25D9',
		L'\u25E6', L'\u263A', L'\u263B', L'\u263C', L'\u2640', L'\u2642', L'\u2660', L'\u2663',
		L'\u2665', L'\u2666', L'\u266A', L'\u266B', L'\u2713', L'\uFB01', L'\uFB02', L'\u2261',
		L'\u2027', L'\uFFFD' };

	sf::RectangleShape lineH(sf::Vector2f(144, 1));
	lineH.setFillColor(sf::Color::Red);
	sf::RectangleShape lineV(sf::Vector2f(1, 144));
	lineV.setFillColor(sf::Color::Red);

	for (unsigned y = 0; y < 16; ++y)
	{

		lineV.setPosition(y * 9 - 1, 0+offset);
		lineH.setPosition(0, (y * 9)+offset);

		texture->draw(lineV);
		texture->draw(lineH);


		for (int x = 0; x < 16; ++x)
		{

			if (character > L'\u256C')
			{
				output.setString(tab[character - (L'\u256D')]);
			}
			else
			{
				output.setString((character));
			}


			output.setPosition(x * 9, (y * 9)+offset);

			texture->draw(output);
			character++;

			if (character == 128) character = 161;
			if (character == 191) character = L'\u2190';
			if (character == L'\u2196') character = L'\u2206';
			if (character == L'\u2207') character = L'\u2208';
			if (character == L'\u2209') character = L'\u2550';
		}

	}


}
