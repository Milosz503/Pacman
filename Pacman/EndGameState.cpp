#include "EndGameState.h"



EndGameState::EndGameState(StateStack& stack, Context context) :
	State(stack, context),
	console_(context.console),
	menu_(context.sounds)
{

	context.music->stop();

	std::wstring str(context.endGameContent->begin(), context.endGameContent->end());
	
	menu_.addItem(new GUI::Text(str, *context.endGameColor));
	menu_.addItem(new GUI::Text(L"-------------"));
	menu_.addItem(new GUI::Text(L""));
	menu_.addItem(new GUI::Text(L"Score: " + std::to_wstring(*context.score)));
	menu_.addItem(new GUI::Text(L""));
	menu_.addItem(new GUI::Text(L""));
	menu_.addItem(new GUI::Text(L""));

	GUI::Button* button = new GUI::Button(L"Retry", CharacterColor::White);
	button->setCallback([&]() {
		requestStackClear();
		requestStackPush(States::Game);
	});
	menu_.addItem(button);

	button = new GUI::Button(L"Menu", CharacterColor::White);
	button->setCallback([&]() {
		requestStackClear();
		requestStackPush(States::Menu);

	});
	menu_.addItem(button);

	menu_.setSpacing(1);
	menu_.setPosition(0, 10);
	menu_.setSize(console_->getWidth(), 4);

}


EndGameState::~EndGameState()
{
}

bool EndGameState::update(sf::Time dt)
{


	return false;
}

bool EndGameState::handleEvent(sf::Event event)
{
	menu_.handleEvent(event);
	return false;
}

void EndGameState::draw()
{
	menu_.draw(console_);
}
