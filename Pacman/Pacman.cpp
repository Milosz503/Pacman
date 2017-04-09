#include "ConsoleWindow.h"
#include "StateStack.h"

#include "GameState.h"
#include "MenuState.h"


//Po setPosition entity moze przeskoczyc przez sciane
//Brak wsparcia dla przesuniecia swiata prze EntityController

int main()
{

	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();
	ConsoleWindow console(50, 50, &textureManager);

	PlayerController controller;

	State::Context context(&console, &textureManager, &controller, nullptr);


	StateStack stack(context);

	stack.registerState<GameState>(States::Game);
	stack.registerState<MenuState>(States::Menu);

	stack.pushState(States::Menu);



	const sf::Time TimePerFrame = sf::seconds(1.f / 60.f);

	sf::Clock clock;

	sf::Time timeSinceLasUpdate = sf::Time::Zero;


	while (console.isOpen())
	{
		sf::Event event;
		while (console.pollEvent(event))
		{

			stack.handleEvent(event);

			if (event.type == Event::Closed)
			{
				console.close();
			}
		}

		sf::Time dt = clock.restart();
		timeSinceLasUpdate += dt;

		while (timeSinceLasUpdate >= TimePerFrame)
		{
			stack.update(timeSinceLasUpdate);
			timeSinceLasUpdate -= TimePerFrame;

			//stack.update(TimePerFrame);

			if (stack.isEmpty())
			{
				console.close();
			}
		}

	

		console.clear(sf::Color::Black);
		stack.draw();
		console.show();

	}





	
	//TextureManager textureManager;
	//textureManager.generateTileset();
	//textureManager.loadTextures();

	//ConsoleCharacter player(textureManager.getTexture(Textures::Player));
	//player.setPosition(5, 5);

	//ConsoleText text(L"Pacman", CharacterColor::Green);
	//text.setPosition(5, 1);
	//text.setBackground(sf::Color(100, 100, 100));

	//ConsoleWindow window(20, 20, &textureManager);
	//window.setFontSize(16);

	//while (true)
	//{
	//	sf::Event event;
	//	while (window.pollEvent(event))
	//	{
	//		if (event.type == Event::Closed)
	//		{
	//			return 0;
	//		}
	//	}

	//	window.clear(sf::Color::Black);

	//	window.draw(player);
	//	window.draw(text);

	//	window.show();
	//}


	return 0;
}