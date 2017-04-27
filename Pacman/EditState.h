#pragma once
#include "State.h"


class EditState : public State
{
public:
	EditState(StateStack& stack, Context context);
	~EditState();

	virtual bool update(sf::Time dt);
	virtual bool handleEvent(sf::Event event);
	virtual void draw();

private:

	TextureManager* textureManager_;
	ConsoleWindow* console_;
	Level* level_;


};

