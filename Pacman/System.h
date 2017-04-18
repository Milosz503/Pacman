#pragma once

#include "GameSystems.h"

class System
{
public:
	System(GameSystems systems);

	virtual void update() = 0;


	~System();

private:
	GameSystems systems_;

protected:
	GameSystems& getSystems();

};

