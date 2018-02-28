#include "PauseState.h"




PauseState::PauseState(StateStack & stack, Context context) :
	State(stack, context),
	console_(context.console),
	menu_(context.sounds)
{

	menu_.addItem(new GUI::Text(L"PAUSE", CharacterColor::Yellow));
	menu_.addItem(new GUI::Text(L""));

	GUI::Button* button = new GUI::Button(L"Resume", CharacterColor::White);
	button->setCallback([&]() {
		requestStackPop();
	});
	menu_.addItem(button);

	button = new GUI::Button(L"Restart", CharacterColor::White);
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
	menu_.setPosition(0, console_->getHeight() * 1.0/4);
	menu_.setSize(console_->getWidth(), console_->getHeight());
}

PauseState::~PauseState()
{
}

bool PauseState::update(sf::Time dt)
{
	return false;
}

bool PauseState::handleEvent(sf::Event event)
{
	menu_.handleEvent(event);

	if (event.type == sf::Event::KeyPressed)
	{
		if (event.key.code == sf::Keyboard::Escape)
		{
			getContext().sounds->play(SoundID::MenuSelect);
			requestStackPop();

		}
	}

	return false;
}

void PauseState::draw()
{

	int x = (console_->getWidth() - 16) / 2;
	int y = console_->getHeight() * 1.0 / 4 - 3;

	ConsoleRectangle rect(x, y, 16, 16, getContext().textureManager->getTexture(L' ', CharacterColor::Blue));
	//rect = ConsoleRectangle(0, 0, console_->getWidth(), console_->getHeight(),
	//	getContext().textureManager->getTexture(L' ', CharacterColor::Blue));
	rect.setFill(true);
	console_->draw(rect);

	TextureCharacter texture;
	texture.rect.x = 14;
	texture.rect.y = 10 + 16 * CharacterColor::LightGrey;

	rect = ConsoleRectangle(x, y, 16, 16, texture);
	rect.setFill(false);
	console_->draw(rect);
	

	menu_.draw(console_);

}
