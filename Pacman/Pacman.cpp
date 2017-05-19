//#include "imgui.h"
//#include "imgui-SFML.h"
//
//#include <SFML/Graphics/RenderWindow.hpp>
//#include <SFML/System/Clock.hpp>
//#include <SFML/Window/Event.hpp>
//#include <SFML/Graphics/CircleShape.hpp>
//#include "TextureManager.h"
//
//#include <iostream>
//
//int main()
//{
//	sf::RenderWindow window(sf::VideoMode(1000, 800), "ImGui + SFML = <3");
//	//window.setFramerateLimit(60);
//	ImGui::SFML::Init(window);
//
//	sf::CircleShape shape(100.f);
//	shape.setFillColor(sf::Color::Green);
//
//	TextureManager textureManager;
//	textureManager.generateTileset();
//	textureManager.loadTextures();
//
//	bool show_test_window = true;
//
//	sf::Clock deltaClock;
//	while (window.isOpen()) {
//		sf::Event event;
//		while (window.pollEvent(event)) {
//			ImGui::SFML::ProcessEvent(event);
//
//			if (event.type == sf::Event::Closed) {
//				window.close();
//			}
//		}
//
//		ImGui::SFML::Update(window, deltaClock.restart());
//
//		ImGui::Begin("Hello, world!");
//		ImGui::Button("Look at this pretty button");
//		ImGui::ColorButton(ImVec4(1, 1, 0, 1));
//
//		static float f = 0.0f;
//		ImGui::Text("Hello, world!");
//		ImGui::SliderFloat("float", &f, 0.0f, 1.0f);
//		ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);
//		
//		sf::Sprite sprite;
//		sprite.setTexture(textureManager.getTileset());
//
//		for (int i = 0; i < 16; ++i)
//		{
//			sprite.setTextureRect(sf::IntRect(i*9, 1, 8, 8));
//
//			ImGui::PushID(i);
//			if (ImGui::ImageButton(sprite, sf::Vector2f(16, 16)))
//			{
//				std::cout << i << std::endl;
//			}
//			ImGui::PopID();
//
//			ImGui::SameLine();
//		}
//		
//
//		ImGui::End();
//
//		ImGui::SetNextWindowPos(ImVec2(650, 20), ImGuiSetCond_FirstUseEver);
//		ImGui::ShowTestWindow(&show_test_window);
//
//		window.clear();
//		window.draw(shape);
//		ImGui::Render();
//		window.display();
//	}
//
//	ImGui::SFML::Shutdown();
//}

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

int main()
{

	TextureManager textureManager;
	textureManager.generateTileset();
	textureManager.loadTextures();
	ConsoleWindow console(50, 50, &textureManager);
	ImGui::SFML::Init(*console.getWindow());

	//Level level;

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