#pragma once

#include "System.h"
#include "Entity.h"
#include "Tile.h"
#include <queue>
#include <list>
#include <iostream>
#include <array>
#include <cstdlib>
#include "PathFinder.h"

class World;
class Scene;



class EntityController : public System
{
public:



	EntityController(SystemManager* systemManager, World* world);

	virtual void update() override;
	void update(Entity* entity);

	virtual void draw() override;

	~EntityController();



private:
	

	Scene* scene_;
	PathFinder finder_;



};
