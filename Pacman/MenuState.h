#pragma once
#include "State.h"
#include "Container.h"
#include "Button.h"

class MenuState :
	public State
{
public:
	MenuState(StateStack& stack, Context context);


	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

	~MenuState();

private:
	ConsoleWindow * console_;
	GUI::Container menu_;

	void callbackPlay();
	void callbackEditor();
	void callbackSettings();
	void callbackExit();
};

