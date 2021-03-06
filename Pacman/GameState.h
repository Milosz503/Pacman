#pragma once

#include "State.h"
#include "World.h"
#include "SystemManager.h"
#include "ConsoleRectangle.h"

class GameState : public State
{
public:
	GameState(StateStack& stack, Context context, bool isEditor);


	virtual bool update(sf::Time dt) override;
	virtual bool handleEvent(sf::Event event) override;
	virtual void draw() override;
	
	~GameState();

private:

	World world_;
	SystemManager systems_;
	ConsoleWindow* console_;

	ConsoleText scoreText_;
	ConsoleText livesText_;

	//Debug data
	ConsoleText updateTime_;
	ConsoleText drawTime_;
	ConsoleText fpsText_;
	Clock dt_;
	float averageUpdate_;


	

};

