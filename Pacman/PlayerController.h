#pragma once

#include "GameObject.h"
#include "Entity.h"

class Entity;

class PlayerController
{
public:
	PlayerController();
	~PlayerController();

	void update(sf::Time dt, Entity* player);
	void handleEvent(sf::Event, Entity* player);


private:


};

