#pragma once


#include "State.h"
#include "World.h"

class GameState : public State
{
public:
	GameState(StateStack& stack, Context context);


	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;
	
	~GameState();

private:
	World world_;

	int posY;
	int posX;

	CharacterColor::Color currentColor;
	sf::Color backgroundColor_;


	ConsoleText scoreText_;
	ConsoleText updateTime_;
	ConsoleText drawTime_;
	float fps;

	float averageUpdate_;
	
};

