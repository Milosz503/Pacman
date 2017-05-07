#pragma once

#include <queue>
#include <vector>

#include "SFML/Graphics.hpp"


class NodePairComparator;


class PathFinder
{
public:

	typedef std::pair<float, sf::Vector2i> NodePair;
	typedef std::priority_queue<NodePair, std::vector<NodePair>, NodePairComparator> NodeQueue;


	PathFinder();
	~PathFinder();

	std::vector<sf::Vector2i>& findPath(sf::Vector2i start, sf::Vector2i goal);


private:

	std::vector<std::vector<sf::Vector2i>> cameFrom_;
	std::vector<std::vector<int>> cost_;
	std::vector<sf::Vector2i> path_;

	sf::Vector2i currentPosition_;
	sf::Vector2i goal_;
	sf::Vector2i start_;

	sf::Vector2i getDirection(sf::Vector2i start, sf::Vector2i goal);
	void readPath(sf::Vector2i start, sf::Vector2i goal);
	void clearData();

	void addNeighbor(sf::Vector2i currentPos, sf::Vector2i neighbor, int neighborCost);
};

class NodePairComparator
{
public:

	bool operator() (PathFinder::NodePair& a, PathFinder::NodePair& b)
	{
		return a.first > b.first;
	}
};