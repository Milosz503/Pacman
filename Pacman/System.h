#pragma once


#include "SystemEvent.h"

class GameSystems;
class World;
class SystemManager;

class System
{
public:
	enum Type{GameLogic, LevelLogic, Physics, PlayerController, EntityController};


	System(SystemManager* systemManager, World* world);

	virtual void update() = 0;

	virtual void draw();


	void handleSystemEvent(SystemEvent* event);


	~System();

private:
	SystemManager* systemManager_;
	World* world_;
	SystemEvent* lastSentEvent_;
	

protected:
	World* getWorld();

	void sendEvent(SystemEvent* event);
	virtual void onEvent(SystemEvent* event);


};



