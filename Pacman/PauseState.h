#pragma once
#include "State.h"
#include "Container.h"
#include "ConsoleRectangle.h"
#include "Button.h"
#include "Text.h"

class PauseState : public State
{
public:
	PauseState(StateStack& stack, Context context);
	~PauseState();

	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

private:

	ConsoleWindow * console_;
	GUI::Container menu_;
};

