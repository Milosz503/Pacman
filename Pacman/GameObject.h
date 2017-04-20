#pragma once

#include "ConsoleTypes.h"
#include "GameSystems.h"
#include "Animation.h"

class Stage;

class GameObject : public ConsoleCharacter
{
public:
	GameObject(GameSystems* systems);

	virtual void update() = 0;

	~GameObject();

protected:
	GameSystems* getSystems();

private:
	GameSystems* systems_;

protected:
	
};

