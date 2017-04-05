#pragma once

#include "ConsoleTypes.h"
#include "Stage.h"

class Stage;

class GameObject : public ConsoleCharacter
{
public:
	GameObject(Stage* stage);

	virtual void update(sf::Time dt) = 0;

	~GameObject();

protected:
	Stage* getStage();

private:
	Stage* stage_;
};

