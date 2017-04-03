#include "TextureManager.h"
#include "ConsoleWindow.h"


int main()
{
	
	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();

	ConsoleCharacter player(textureManager.getTexture(TextureManager::Player));
	player.setPosition(5, 5);

	ConsoleText text(L"Pacman");
	text.setPosition(5, 1);
	text.setBackground(sf::Color(100, 100, 100));

	ConsoleWindow window(20, 20, &textureManager);
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
		window.draw(text);

		window.show();
	}


	return 0;
}