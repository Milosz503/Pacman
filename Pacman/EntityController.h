#pragma once

#include "Stage.h"
#include "Entity.h"
#include <queue>
#include <iostream>

class EntityController
{
public:
	EntityController(Stage* stage);

	void update(Entity* entity);
	void handleCollision(Entity* entity, Tile* tile);
	void draw();

	~EntityController();

private:
	Stage* stage_;

	sf::Vector2f getDirectionToPlayer(sf::Vector2i position);
	sf::Vector2i searchPath(sf::Vector2i start, sf::Vector2i target);
	void clearGraph(sf::Vector2i start);
	bool isInsideGraph(sf::Vector2f point);


	enum NodeState {Left, Up, Right, Down, Visited, Unvisited};

	std::vector<std::vector<NodeState>> graph;
	std::vector<sf::Vector2i> path;

};

