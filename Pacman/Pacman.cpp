#include <iostream>
#include "imgui.h"
#include "imgui-SFML.h"
#include "ConsoleWindow.h"
#include "GameObject.h"
#include "StateStack.h"

#include "GameState.h"
#include "MenuState.h"
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
	ConsoleWindow console(66, 42, &textureManager, "Pacman");
	ImGui::SFML::Init(*console.getWindow());

	MusicPlayer music;
	SoundPlayer sounds;

	

	State::Context context(&console, &textureManager, &music, &sounds);


	StateStack stack(context);

	stack.registerState<GameState>(States::Game, false);
	stack.registerState<MenuState>(States::Menu);
	stack.registerState<GameState>(States::Editor, true);
	stack.registerState<LevelChoiceState>(States::LevelChoiceGame, States::Game);
	stack.registerState<LevelChoiceState>(States::LevelChoiceEditor, States::Editor);

	stack.pushState(States::Menu);



	const sf::Time TimePerFrame = sf::seconds(1.f / 60.f);

	sf::Clock clock;

	sf::Time timeSinceLasUpdate = sf::Time::Zero;


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

			if (timeSinceLasUpdate > TimePerFrame)
			{
				timeSinceLasUpdate = TimePerFrame;
			}
			//stack.update(TimePerFrame);

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

	

		/*console.clear(sf::Color::Black);
		stack.draw();
		console.show();*/

	}





	


	return 0;
}