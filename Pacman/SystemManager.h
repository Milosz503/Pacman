#pragma once


#include <vector>
#include "SystemEvent.h"
#include "System.h"
#include "World.h"

class World;

class SystemManager
{
public:
	SystemManager(World* world);
	~SystemManager();

	template <typename T>
	void addSystem();

	void handleSystemEvent(SystemEvent* event);
	void update();
	void draw();

private:
	World* world_;
	std::vector<System*> systems_;
};


template <typename T>
void SystemManager::addSystem()
{
	systems_.push_back(new T(this, world_));
}