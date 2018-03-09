#include "SettingsState.h"
#include "ConsoleRectangle.h"





SettingsState::SettingsState(StateStack & stack, Context context) :
	State(stack, context),
	console_(context.console),
	menu_(context.sounds),
	isSound_(false),
	isMusic_(false),
	isFullscreen_(false)
{

	if (context.sounds->getVolume() > 0)
		isSound_ = true;

	if (context.music->getVolume() > 0)
		isMusic_ = true;

	scale_ = (int)getContext().console->getScale();
	isFullscreen_ = console_->isFullscreen();


	updateMenu();

	menu_.setSpacing(1);
	menu_.setPosition(0, 13);
	menu_.setSize(console_->getWidth(), 4);



}

SettingsState::~SettingsState()
{
}

bool SettingsState::update(sf::Time dt)
{

	return false;
}

bool SettingsState::handleEvent(sf::Event event)
{
	menu_.handleEvent(event);

	if (event.type == sf::Event::KeyPressed)
	{
		if (event.key.code == sf::Keyboard::Escape)
		{
			requestStackPop();
		}
	}

	return false;
}

void SettingsState::draw()
{
	//clear
	ConsoleRectangle rect(0, 0, console_->getWidth(), console_->getHeight(),
		getContext().textureManager->getTexture(L' ', CharacterColor::Blue));
	rect.setFill(true);
	console_->draw(rect);


	//title
	int centerX = console_->getWidth() / 2;
	ConsoleText title(L"SETTINGS", CharacterColor::Yellow);
	title.setPosition(centerX - 4, 8);
	console_->draw(title);


	//underline
	TextureCharacter texture = getContext().textureManager->getTexture(L'-', CharacterColor::White);
	rect = ConsoleRectangle(centerX - 5, 9, 10, 1, texture);
	console_->draw(rect);

	

	menu_.draw(console_);
}

void SettingsState::updateMenu()
{
	getContext().sounds->setVolume(isSound_ ? 100.f : 0.f);
	getContext().music->setVolume(isMusic_ ? 100.f : 0.f);
	console_->setFullscreen(isFullscreen_);
	console_->setScale(scale_);
	

	int focus = menu_.getSelectedItem();
	menu_.removeItems();


	//menu_.addItem(new GUI::Text(L"SETTINGS", CharacterColor::Yellow));
	//menu_.addItem(new GUI::Text(L""));

	CharacterColor::Color color = isSound_ ? CharacterColor::White : CharacterColor::Grey;
	std::wstring text = isSound_ ? L"on" : L"off";
	GUI::Button* button = new GUI::Button(L"Sounds: " + text, color);
	button->setCallback([&]() {
		isSound_ = !isSound_;
		updateMenu();
	});
	menu_.addItem(button);

	color = isMusic_ ? CharacterColor::White : CharacterColor::Grey;
	text = isMusic_ ? L"on" : L"off";
	button = new GUI::Button(L"Music: " + text, color);
	button->setCallback([&]() {
		isMusic_ = !isMusic_;
		updateMenu();

	});
	menu_.addItem(button);

	text = scale_ == 0 ? L"auto" : std::to_wstring(scale_);
	button = new GUI::Button(L"Scale: " + text, CharacterColor::White);
	button->setCallback([&]() {
		scale_++;
		if (scale_ > 4)
		{
			if (isFullscreen_)
				scale_ = 0;
			else
				scale_ = 1;
		}
			
		updateMenu();

	});
	menu_.addItem(button);

	color = isFullscreen_ ? CharacterColor::White : CharacterColor::Grey;
	text = isFullscreen_ ? L"on" : L"off";
	button = new GUI::Button(L"Fullscreen: " + text, color);
	button->setCallback([&]() {
		isFullscreen_ = !isFullscreen_;
		scale_ = console_->getScale();
		updateMenu();

	});
	menu_.addItem(button);

	
	menu_.addItem(new GUI::Text(L""));
	button = new GUI::Button(L"Back", color);
	button->setCallback([&]() {
		requestStackPop();
	});
	menu_.addItem(button);

	menu_.setSelectedItem(focus);

}
