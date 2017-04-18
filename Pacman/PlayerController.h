#pragma once

#include "System.h"
#include "GameObject.h"
#include "Entity.h"

class Entity;

class PlayerController : public System
{
public:
	PlayerController(GameSystems systems);
	~PlayerController();

	virtual void update() override;




};

