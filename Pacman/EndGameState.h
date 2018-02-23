#pragma once
#include "State.h"
#include "Button.h"
#include "Container.h"
#include "Text.h"

class EndGameState : public State
{
public:
	EndGameState(StateStack& stack, Context context);
	~EndGameState();

	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

private:

	ConsoleWindow * console_;
	GUI::Container menu_;
};

