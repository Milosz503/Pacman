#include "MenuState.h"




MenuState::MenuState(StateStack & stack, Context context) :
	State(stack, context)
{

	menu_.addItem((new GUI::Button(L"Play", CharacterColor::White, 
		[&](){
		requestStackPop();
		requestStackPush(States::LevelChoiceGame); }
		)));
	menu_.addItem((new GUI::Button(L"Editor", CharacterColor::White)));
	menu_.addItem((new GUI::Button(L"Settings", CharacterColor::White)));
	menu_.addItem((new GUI::Button(L"Exit", CharacterColor::White)));

	menu_.setPosition(5, 5);
	menu_.setSize(12, 10);
	menu_.setSpacing(1);

}

bool MenuState::update(sf::Time dt)
{
	return true;
}

bool MenuState::handleEvent(sf::Event event)
{
	menu_.handleEvent(event);

	if (event.type == Event::KeyPressed)
	{
		if (event.key.code == Keyboard::Escape)
		{
			requestStackPop();
		}
		if (event.key.code == Keyboard::Return)
		{
			/*requestStackPop();
			requestStackPush(States::LevelChoiceGame);*/
		}

		switch (event.key.code)
		{
		case Keyboard::Num1:
			requestStackPop();
			requestStackPush(States::LevelChoiceGame);
			break;

		case Keyboard::Num2:
		{
			unsigned scale = getContext().console->getFontSize() / 8;

			if (scale < 4)
				scale++;
			else
				scale = 1;

			getContext().console->setFontSize(scale * 8);

			break;
		}

		case Keyboard::Num3:
			requestStackPop();
			requestStackPush(States::LevelChoiceEditor);
			break;
		
		case Keyboard::Num4:
			requestStackPop();
			break;
		}
	}

	return true;
}

void MenuState::draw()
{
	ConsoleText info(L"Wybierz opcje:", CharacterColor::Green);

	ConsoleText optionPlay(L"1. Play", CharacterColor::White);
	ConsoleText optionSettings(L"2. Settings", CharacterColor::White);
	ConsoleText optionEditor(L"3. Editor", CharacterColor::White);
	ConsoleText optionExit(L"4. Exit", CharacterColor::White);

	info.setPosition(0, 1);

	optionPlay.setPosition(2, 3);
	optionSettings.setPosition(2, 4);
	optionEditor.setPosition(2, 5);
	optionExit.setPosition(2, 6);

	getContext().console->draw(info);
	//getContext().console->draw(optionPlay);
	//getContext().console->draw(optionSettings);
	//getContext().console->draw(optionEditor);
	//getContext().console->draw(optionExit);

	menu_.draw(getContext().console);
}

MenuState::~MenuState()
{
}
