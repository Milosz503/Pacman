#pragma once


#include "State.h"


class GameState : public State
{
public:
	GameState(StateStack& stack, Context context);


	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;

	~GameState();

private:
	int posY;
	int posX;
};

