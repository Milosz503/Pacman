#pragma once


#include <set>

#include "Stage.h"

class Physics
{
public:
	Physics(Stage* stage);

	void update(sf::Time dt);

	~Physics();


private:
	Stage* stage_;

	
};

