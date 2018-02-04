#include <iostream>
#include "imgui.h"
#include "imgui-SFML.h"
#include "ConsoleWindow.h"
#include "GameObject.h"
#include "StateStack.h"

#include "GameState.h"
#include "MenuState.h"
#include "LevelManager.h"
#include "EditState.h"
#include "LevelChoiceState.h"


//Po setPosition entity moze przeskoczyc przez sciane
//Brak wsparcia dla przesuniecia swiata prze EntityController
//Po zmianie kierunku i nacisnieciu szybko strzalki gracz moze sie zatrzymac
//timeSinceLastUpdate, nie powinno byc dt?

int main()
{

	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();
	ConsoleWindow console(50, 50, &textureManager, "Pacman");
	ImGui::SFML::Init(*console.getWindow());


	LevelManager levelManager;


	

	State::Context context(&console, &textureManager);


	StateStack stack(context);

	stack.registerState<GameState>(States::Game);
	stack.registerState<MenuState>(States::Menu);
	stack.registerState<EditState>(States::Editor);
	stack.registerState<LevelChoiceState>(States::LevelChoiceGame, States::Game);
	stack.registerState<LevelChoiceState>(States::LevelChoiceEditor, States::Editor);

	stack.pushState(States::Menu);



	const sf::Time TimePerFrame = sf::seconds(1.f / 60.f);

	sf::Clock clock;

	sf::Time timeSinceLasUpdate = sf::Time::Zero;


	while (console.isOpen())
	{
		/*sf::Event event;
		while (console.pollEvent(event))
		{
			ImGui::SFML::ProcessEvent(event);
			stack.handleEvent(event);

			if (event.type == Event::Closed)
			{
				console.close();
			}
		}*/

		sf::Time dt = clock.restart();
		timeSinceLasUpdate += dt;

		while (timeSinceLasUpdate >= TimePerFrame)
		{
			sf::Event event;
			while (console.pollEvent(event))
			{
				ImGui::SFML::ProcessEvent(event);
				stack.handleEvent(event);

				if (event.type == Event::Closed)
				{
					console.close();
				}
			}

			ImGui::SFML::Update(*console.getWindow(), timeSinceLasUpdate);
			stack.update(timeSinceLasUpdate);
			
			timeSinceLasUpdate -= TimePerFrame;
			//stack.update(TimePerFrame);

			if (stack.isEmpty())
			{
				console.close();
			}

			

			

			console.clear(sf::Color::Black);
			stack.draw();
			
			console.show();
			ImGui::Render();
			console.display();

			
		}

	

		/*console.clear(sf::Color::Black);
		stack.draw();
		console.show();*/

	}





	


	return 0;
}