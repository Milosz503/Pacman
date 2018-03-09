#pragma once
#include "State.h"
#include "Button.h"
#include "Container.h"
#include "Text.h"

class SettingsState : public State
{
public:
	SettingsState(StateStack& stack, Context context);
	~SettingsState();

	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

private:

	ConsoleWindow * console_;
	GUI::Container menu_;

	bool isSound_;
	bool isMusic_;
	int scale_;
	bool isFullscreen_;

	void updateMenu();
};

