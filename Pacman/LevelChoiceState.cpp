#include "LevelChoiceState.h"



LevelChoiceState::LevelChoiceState(StateStack& stack, Context context, States::ID nextState) :
	State(stack, context),
	nextState_(nextState),
	menu_(context.sounds),
	pageNumber_(0)
{
	ConsoleWindow* console = getContext().console;
	menu_.setSpacing(1);
	menu_.setPosition(console->getWidth() / 2-15, 4);
	menu_.setSize(30, 20);

	changePage();

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
	menu_.handleEvent(event);

	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
	{

		requestStackPop();
		//requestStackPush(States::Menu);
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

		if (event.key.code == Keyboard::Left)
		{
			
			if (pageNumber_ > 0)
			{
				getContext().sounds->play(SoundID::PageChanged);
				pageNumber_--;
				changePage();
			}
		}
		else if (event.key.code == Keyboard::Right)
		{
			
			if (pageNumber_ < 3)
			{
				getContext().sounds->play(SoundID::PageChanged);
				pageNumber_++;
				changePage();
			}
		}


	}

	return false;
}

void LevelChoiceState::draw()
{
	/*ConsoleText text;

	for (int i = 1; i <= 9; ++i)
	{
		text.setText(std::to_wstring(i) + L". Save " + std::to_wstring(i));
		text.setPosition(3, i * 2 + 3);

		getContext().console->draw(text);
	}*/

	getContext().console->clear();
	menu_.draw(getContext().console);

}

void LevelChoiceState::changePage()
{
	

	menu_.removeItems();

	menu_.addItem(new GUI::Text(L"Choose a level:", CharacterColor::Yellow));
	menu_.addItem(new GUI::Text(L""));
	menu_.addItem(new GUI::Text(L""));

	for (int i = pageNumber_*5+1; i <= pageNumber_ * 5 + 5; ++i)
	{
		GUI::Button* button = new GUI::Button(L"Save " + std::to_wstring(i), CharacterColor::White,
			[=]() {

			*(getContext().levelFile) = PATH_TO_LEVEL + "save" + std::to_string(i) + ".lua";

			requestStackClear();
			requestStackPush(nextState_);
		}
		);

		button->setAlignment(GUI::Alignment::Center);

		menu_.addItem(button);

		GUI::Text* text = new GUI::Text(L"High score: 0", CharacterColor::Grey);
		text->setAlignment(GUI::Alignment::Center);
		menu_.addItem(text);

		menu_.addItem(new GUI::Text(L""));


	}

	//menu_.addItem(new GUI::Text(L""));

	if(pageNumber_ == 0)
		menu_.addItem(new GUI::Text(L"   " + std::to_wstring(pageNumber_+1) + L" >>", CharacterColor::Cyan));
	else if(pageNumber_ == 3)
		menu_.addItem(new GUI::Text(L"<< " + std::to_wstring(pageNumber_ + 1) + L"   ", CharacterColor::Cyan));
	else
		menu_.addItem(new GUI::Text(L"<< " + std::to_wstring(pageNumber_ + 1) + L" >>", CharacterColor::Cyan));
}
