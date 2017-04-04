#pragma once
#include "State.h"
class MenuState :
	public State
{
public:
	MenuState(StateStack& stack, Context context);


	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

	~MenuState();
};

