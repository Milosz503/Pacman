#include "ConsoleWindow.h"
#include "GameObject.h"
#include "StateStack.h"

#include "GameState.h"
#include "MenuState.h"
#include "LevelManager.h"
#include "EditState.h"


//Po setPosition entity moze przeskoczyc przez sciane
//Brak wsparcia dla przesuniecia swiata prze EntityController

int main()
{

	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();
	ConsoleWindow console(50, 50, &textureManager);


	Level level;

	LevelManager levelManager(&level);
	levelManager.loadFromFile("level2.txt");

	

	State::Context context(&console, &textureManager, &level);


	StateStack stack(context);

	stack.registerState<GameState>(States::Game);
	stack.registerState<MenuState>(States::Menu);
	stack.registerState<EditState>(States::Editor);

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





	


	return 0;
}