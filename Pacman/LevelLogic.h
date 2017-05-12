#pragma once
#include "System.h"

#include <memory>

class LevelLogic : public System
{
public:
	LevelLogic(SystemManager* systemManager, World* world);

	virtual void update() override;

	~LevelLogic();

private:
	sol::table vars_;

	std::unique_ptr<sol::protected_function> updateFunction_;
	std::unique_ptr<sol::protected_function> collideFunction_;


	virtual void onEvent(SystemEvent* event) override;
};

