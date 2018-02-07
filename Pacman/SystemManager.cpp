#include "SystemManager.h"




SystemManager::SystemManager(World * world) :
	world_(world)
{
}

SystemManager::~SystemManager()
{
}

void SystemManager::sendSystemEvent(SystemEvent * event)
{
	for (auto& system : systems_)
	{
		system->handleSystemEvent(event);
	}
}


void SystemManager::update()
{
	
	for (auto& system : systems_)
	{
		system->update();
	}
}

void SystemManager::draw()
{
	for (auto& system : systems_)
	{
		system->draw();
	}
}
