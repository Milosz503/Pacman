#include "PathFinder.h"
#include <array>

PathFinder::PathFinder()
{
}


PathFinder::~PathFinder()
{
}

std::vector<sf::Vector2i>& PathFinder::findPath(sf::Vector2i start, sf::Vector2i goal)
{
	clearData();

	std::array<sf::Vector2i, 4> neighbors;

	neighbors[0] = sf::Vector2i(1, 0);
	neighbors[1] = sf::Vector2i(0, 1);
	neighbors[2] = sf::Vector2i(-1, 0);
	neighbors[3] = sf::Vector2i(0, -1);




	NodeQueue queue;
	cost_[start.x][start.y] = 0;

	queue.push(NodePair(0, start));

	int iterations = 0;
	while (!queue.empty())
	{
		NodePair node = queue.top();
		queue.pop();

		sf::Vector2i pos = node.second;

		for (int i = 0; i < neighbors.size(); ++i)
		{
			addNeighbor(pos, pos + neighbors[i], 1);
		}
		++iterations;
	}


	readPath(start, goal);
	

	return path_;
}



sf::Vector2i PathFinder::getDirection(sf::Vector2i start, sf::Vector2i goal)
{
	return sf::Vector2i();
}

void PathFinder::readPath(sf::Vector2i start, sf::Vector2i goal)
{
}

void PathFinder::clearData()
{
}

void PathFinder::addNeighbor(sf::Vector2i currentPos, sf::Vector2i neighbor, int neighborCost)
{
	
}
