#include "FrameSystem.h"



FrameSystem::FrameSystem(GameSystems systems) :
	System(systems),
	frameCounter_(0)
{
}

void FrameSystem::update()
{
	++frameCounter_;
}

unsigned long long FrameSystem::getFrameNumber()
{
	return frameCounter_;
}

float FrameSystem::getFrameTime()
{
	return 1.0/60;
}


FrameSystem::~FrameSystem()
{
}
