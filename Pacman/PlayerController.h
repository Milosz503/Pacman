#pragma once

#include "System.h"
#include "GameObject.h"
#include "Entity.h"

class Entity;
class World;

class PlayerController : public System
{
public:
	PlayerController(SystemManager* systemManager, World* world);
	~PlayerController();

	virtual void update() override;


private:

	DirectionX::Move newDirX;
	DirectionY::Move newDirY;

};

