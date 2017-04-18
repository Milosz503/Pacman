#include "System.h"



System::System(GameSystems systems) :
	systems_(systems)
{
}


System::~System()
{
}

GameSystems & System::getSystems()
{
	return systems_;
}
