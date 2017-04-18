#pragma once

#include "System.h"

class FrameSystem : public System
{
public:
	FrameSystem(GameSystems systems);

	virtual void update() override;


	unsigned long long getFrameNumber();

	float getFrameTime();


	~FrameSystem();

private:
	unsigned long long frameCounter_;
};

