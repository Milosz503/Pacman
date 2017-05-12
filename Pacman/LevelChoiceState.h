#pragma once

#include "State.h"

class LevelChoiceState : State
{
public:
	LevelChoiceState(StateStack& stack, Context context, States::ID nextState);
	~LevelChoiceState();

	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

private:
	const std::string PATH_TO_LEVEL = "data/levels/";

	States::ID nextState_;
};

