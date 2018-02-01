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

	const std::string A_STAR = "a_star";
	const std::string A_STAR_BACK = "a_star_back";
	const std::string A_STAR_FRONT = "a_star_front";

	const std::string DIRECTION = "direction";


	EntityController(SystemManager* systemManager, World* world);

	virtual void update() override;
	void update(Entity* entity);

	virtual void draw() override;

	~EntityController();



private:
	

	Scene* scene_;
	PathFinder finder_;



	sf::Vector2i lastPosition_;
	sf::Vector2i goal_;
	sf::Vector2i start_;

};
