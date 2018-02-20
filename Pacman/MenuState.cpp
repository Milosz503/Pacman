#include "MenuState.h"
#include "Text.h"
#include "ConsoleRectangle.h"


MenuState::MenuState(StateStack & stack, Context context) :
	State(stack, context),
	console_(context.console)
{


	menu_.addItem(new GUI::Button(L"Play", CharacterColor::White, std::bind(&MenuState::callbackPlay, this)));
	menu_.addItem(new GUI::Button(L"Editor", CharacterColor::White, std::bind(&MenuState::callbackEditor, this)));
	menu_.addItem(new GUI::Button(L"Settings", CharacterColor::White, std::bind(&MenuState::callbackSettings, this)));
	menu_.addItem(new GUI::Button(L"Exit", CharacterColor::White, std::bind(&MenuState::callbackExit, this)));

	menu_.setPosition(console_->getWidth()/2 - 6, 13);
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
	}

	return true;
}

void MenuState::draw()
{

	int centerX = console_->getWidth() / 2;

	menu_.draw(console_);
	TextureCharacter texture = getContext().textureManager->getTexture(L'-', CharacterColor::White);

	ConsoleRectangle rect(centerX - 5, 7, 10, 1, texture);
	//console_->draw(rect);

	rect = ConsoleRectangle(centerX - 5, 9, 10, 1, texture);
	console_->draw(rect);

	ConsoleText title(L"PACMAN", CharacterColor::Yellow);
	title.setPosition(centerX - 3, 8);
	console_->draw(title);
}

MenuState::~MenuState()
{
}

void MenuState::callbackPlay()
{
	requestStackPop();
	requestStackPush(States::LevelChoiceGame);
}

void MenuState::callbackEditor()
{
	requestStackPop();
	requestStackPush(States::LevelChoiceEditor);
}

void MenuState::callbackSettings()
{
	unsigned scale = getContext().console->getFontSize() / 8;

	if (scale < 4)
		scale++;
	else
		scale = 1;

	getContext().console->setFontSize(scale * 8);
}

void MenuState::callbackExit()
{
	requestStackPop();
}
