#pragma once

#include "Stage.h"
#include "Entity.h"
#include <queue>
#include <list>
#include <iostream>
#include <array>
#include <cstdlib>


class EntityController
{
public:
	EntityController(Stage* stage);

	void update(Entity* entity);
	void handleCollision(Entity* entity, Tile* tile);
	void draw();

	~EntityController();

	typedef std::pair<float, sf::Vector2i> NodePair;
	typedef std::pair<int, sf::Vector2i> NodeCost;

private:
	

	Stage* stage_;

	sf::Vector2f getDirectionToPlayer(sf::Vector2i position);
	sf::Vector2i searchPath(sf::Vector2i start, sf::Vector2i target);
	sf::Vector2i searchPathWage(sf::Vector2i start, sf::Vector2i target);

	bool searchPathAStar(sf::Vector2i start, sf::Vector2i goal,
		std::list<sf::Vector2i>& path, std::vector<NodeCost>& customCosts = std::vector<NodeCost>());

	void clearGraph(sf::Vector2i start);
	bool isInsideGraph(sf::Vector2f point);

	float heuristic(sf::Vector2i current, sf::Vector2i goal, sf::Vector2i start);


	enum NodeState {Left, Up, Right, Down, Visited, Unvisited};

	std::vector<std::vector<NodeState>> graph;
	std::vector<std::vector<int>> distance;
	std::list<sf::Vector2i> path;

};

class NodePairComparator
{
public:

	bool operator() (EntityController::NodePair& a, EntityController::NodePair& b)
	{
		return a.first > b.first;
	}
};