#pragma once

#include "State.h"
#include "Container.h"
#include "Button.h"
#include "Text.h"

class LevelChoiceState : public State
{
public:
	LevelChoiceState(StateStack& stack, Context context, States::ID nextState);
	~LevelChoiceState();

	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

private:
	

	States::ID nextState_;

	GUI::Container menu_;
	int pageNumber_;

	void changePage();

};

