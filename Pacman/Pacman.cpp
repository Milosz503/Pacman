#include <iostream>
#include "imgui.h"
#include "imgui-SFML.h"
#include "ConsoleWindow.h"
#include "GameObject.h"
#include "StateStack.h"

#include "GameState.h"
#include "MenuState.h"
#include "EditState.h"
#include "EndGameState.h"
#include "LevelChoiceState.h"
#include "PauseState.h"
#include "SettingsState.h"


//Po setPosition entity moze przeskoczyc przez sciane
//Brak wsparcia dla przesuniecia swiata prze EntityController
//Po zmianie kierunku i nacisnieciu szybko strzalki gracz moze sie zatrzymac
//timeSinceLastUpdate, nie powinno byc dt?

int main()
{

	TextureManager textureManager;
	//textureManager.generateTileset();
	textureManager.loadTextures();

	

	ConsoleWindow console(66, 42, &textureManager, "Pacman");
	//console.clear(sf::Color::Red);
	//console.display();
	console.loadingScreen(0);
	

	ImGui::SFML::Init(*console.getWindow());
	console.loadingScreen(1);


	MusicPlayer music;
	console.loadingScreen(2);
	SoundPlayer sounds;
	console.loadingScreen(3);
	

	State::Context context(&console, &textureManager, &music, &sounds);


	StateStack stack(context);

	stack.registerState<GameState>(States::Game, false);
	stack.registerState<EndGameState>(States::EndGame);
	stack.registerState<MenuState>(States::Menu);
	stack.registerState<SettingsState>(States::Settings);
	stack.registerState<PauseState>(States::Pause);
	stack.registerState<GameState>(States::Editor, true);
	stack.registerState<LevelChoiceState>(States::LevelChoiceGame, States::Game);
	stack.registerState<LevelChoiceState>(States::LevelChoiceEditor, States::Editor);



	stack.pushState(States::Menu);



	const sf::Time TimePerFrame = sf::seconds(1.f / 60.f);

	sf::Clock clock;

	sf::Time timeSinceLastUpdate = sf::Time::Zero;

	while (console.isOpen())
	{
		//sf::Event event;
		//while (console.pollEvent(event))
		//{
		//	ImGui::SFML::ProcessEvent(event);
		//	stack.handleEvent(event);

		//	if (event.type == Event::Closed)
		//	{
		//		console.close();
		//	}
		//}
		if (timeSinceLastUpdate + clock.getElapsedTime() >= TimePerFrame)
		{
			timeSinceLastUpdate += clock.restart();


			while (timeSinceLastUpdate >= TimePerFrame)
			{
				timeSinceLastUpdate -= TimePerFrame;
				if (timeSinceLastUpdate > TimePerFrame)
				{
					timeSinceLastUpdate = TimePerFrame;
				}

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
				
				ImGui::SFML::Update(*console.getWindow(), TimePerFrame);
				stack.update(TimePerFrame);

				

				

				if (stack.isEmpty())
				{
					console.close();
				}

				

				console.clear(sf::Color::Black);
				stack.draw();
				console.show();

				ImGui::SFML::Render(*console.getWindow());
				console.display();

				


			}

		}
		

		/*console.clear(sf::Color::Black);
		stack.draw();
		console.show();*/

	}





	


	return 0;
}