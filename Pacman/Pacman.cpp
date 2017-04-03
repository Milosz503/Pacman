#include "TextureManager.h"
#include "ConsoleWindow.h"


int main()
{
	
	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();

	ConsoleCharacter player(textureManager.getTexture(TextureManager::Player));
	player.setPosition(5, 5);

	ConsoleWindow window(20, 20);
	window.setFontSize(16);

	while (true)
	{
		sf::Event event;
		while (window.pollEvent(event))
		{
			if (event.type == Event::Closed)
			{
				return 0;
			}
		}

		window.clear(sf::Color::Black);

		window.draw(player);

		window.show();
	}


	return 0;
}