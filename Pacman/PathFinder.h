#pragma once

#include <queue>
#include <vector>
#include <list>
#include <iostream>
#include <array>
#include <cstdlib>

#include "SFML/Graphics.hpp"
#include "Scene.h"




class PathFinder
{
public:

	typedef std::pair<float, sf::Vector2i> NodePair;

	class NodePairComparator
	{
	public:

		bool operator() (NodePair& a, NodePair& b)
		{
			return a.first > b.first;
		}
	};

	typedef std::priority_queue<NodePair, std::vector<NodePair>, NodePairComparator> NodeQueue;


	PathFinder(Scene* scene);
	~PathFinder();

	std::vector<sf::Vector2i>& findPath(sf::Vector2i start, sf::Vector2i goal, sf::Vector2i lastPosition);
	sf::Vector2i findDirectionTo(sf::Vector2i start, sf::Vector2i goal, sf::Vector2i lastPosition);

private:

	Scene* scene_;

	std::vector<std::vector<sf::Vector2i>> cameFrom_;
	std::vector<std::vector<int>> cost_;
	std::vector<sf::Vector2i> path_;
	NodeQueue nodes_;


	sf::Vector2i goal_;
	sf::Vector2i start_;

	sf::Vector2i getDirection(sf::Vector2i pos, sf::Vector2i next);
	void readPath(sf::Vector2i start, sf::Vector2i goal);
	void clearData();

	void addNeighbor(sf::Vector2i currentPos, sf::Vector2i neighbor, int neighborCost);

	sf::Vector2i getDistance(sf::Vector2i& start, sf::Vector2i& goal);
	float heuristic(sf::Vector2i current, sf::Vector2i goal, sf::Vector2i start);

	bool isPhysical(sf::Vector2i pos);
};

