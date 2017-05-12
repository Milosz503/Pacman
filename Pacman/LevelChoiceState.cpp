#include "LevelChoiceState.h"



LevelChoiceState::LevelChoiceState(StateStack& stack, Context context, States::ID nextState) :
	State(stack, context),
	nextState_(nextState)
{

}


LevelChoiceState::~LevelChoiceState()
{

}

bool LevelChoiceState::update(sf::Time dt)
{
	return true;
}

bool LevelChoiceState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
	{

		requestStackPop();
		requestStackPush(States::Menu);
	}

	if (event.type == Event::KeyPressed)
	{
		if (event.key.code >= Keyboard::Num1 && event.key.code <= Keyboard::Num9)
		{
			int value = event.key.code - Keyboard::Num1 + 1;

			*(getContext().levelFile) = PATH_TO_LEVEL + "save" + std::to_string(value) + ".lua";

			requestStackClear();
			requestStackPush(nextState_);
		}



	}

	return true;
}

void LevelChoiceState::draw()
{
	ConsoleText text;

	for (int i = 1; i <= 9; ++i)
	{
		text.setText(std::to_wstring(i) + L". Save " + std::to_wstring(i));
		text.setPosition(3, i * 2 + 3);

		getContext().console->draw(text);
	}

}
