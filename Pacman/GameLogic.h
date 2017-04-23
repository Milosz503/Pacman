#pragma once
#include "System.h"

class Scene;

class GameLogic : public System
{
public:
	GameLogic(SystemManager* systemManager, World* world);

	void update();
	void onEvent(SystemEvent* event);

	~GameLogic();

private:
	Scene* scene_;
};

