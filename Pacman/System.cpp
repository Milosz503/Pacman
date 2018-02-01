#include "System.h"
#include "SystemManager.h"


System::System(SystemManager* systemManager, World* world) :
	//systems_(systems),
	systemManager_(systemManager),
	world_(world),
	lastSentEvent_(nullptr)
{
}


void System::draw()
{
}

void System::handleSystemEvent(SystemEvent * event)
{

	if (event != lastSentEvent_)
		onEvent(event);

}

System::~System()
{

}


World * System::getWorld()
{
	return world_;
}

void System::sendEvent(SystemEvent * event)
{

	lastSentEvent_ = event;

	if (systemManager_ != nullptr)
		systemManager_->sendSystemEvent(event);

	event = nullptr;

}

void System::onEvent(SystemEvent * event)
{
}
