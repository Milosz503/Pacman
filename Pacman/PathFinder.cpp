#include "PathFinder.h"
#include <array>
#include <limits>
#include <algorithm>

PathFinder::PathFinder(Scene* scene) :
	 scene_(scene),
	width_(0),
	height_(0)
{
	resize();
	
}


PathFinder::~PathFinder()
{
}

void PathFinder::init(sf::Vector2i start, sf::Vector2i goal, sf::Vector2i lastPosition)
{
	start_ = start;
	goal_ = goal;
	lastPosition_ = lastPosition;

	playerFrontCost_ = 1;
	playerBackCost_ = 1;
	canMoveBack_ = false;

	resize();
	clearData();

}

void PathFinder::setPlayerFront(sf::Vector2i pos, int cost)
{
	playerFront_ = pos;
	playerFrontCost_ = cost;
}

void PathFinder::setPlayerBack(sf::Vector2i pos, int cost)
{
	playerBack_ = pos;
	playerBackCost_ = cost;
}

void PathFinder::setCanMoveBack(bool canMoveBack)
{
	canMoveBack_ = canMoveBack;
}

void PathFinder::resize()
{

	if (width_ == scene_->getWidth() && height_ == scene_->getHeight())
		return;

	cameFrom_.resize(scene_->getWidth());

	for (int i = 0; i < cameFrom_.size(); ++i)
	{
		cameFrom_[i].resize(scene_->getHeight());


	}


	cost_.resize(scene_->getWidth());

	for (int i = 0; i < cost_.size(); ++i)
	{
		cost_[i].resize(scene_->getHeight());


	}
}

void PathFinder::clearData()
{
	for (int x = 0; x < cost_.size(); ++x)
	{
		for (int y = 0; y < cost_[x].size(); ++y)
		{
			cost_[x][y] = std::numeric_limits<int>::max();
		}
	}

	path_.clear();

	nodes_ = NodeQueue();
}

std::vector<sf::Vector2i>& PathFinder::findPath()
{
	std::array<sf::Vector2i, 4> neighbors;

	neighbors[0] = sf::Vector2i(1, 0);
	neighbors[1] = sf::Vector2i(0, 1);
	neighbors[2] = sf::Vector2i(-1, 0);
	neighbors[3] = sf::Vector2i(0, -1);


	
	cost_[start_.x][start_.y] = 0;

	nodes_.push(NodePair(0, start_));

	bool found = false;
	int iterations = 0;
	while (!nodes_.empty())
	{
		NodePair node = nodes_.top();
		nodes_.pop();

		sf::Vector2i pos = node.second;

		if (pos == goal_) {
			std::cout << "Found" << iterations << std::endl;
			found = true;
			break;
		}

		for (int i = 0; i < neighbors.size(); ++i)
		{

			if (pos + neighbors[i] != lastPosition_ || canMoveBack_)
			{
				int cost = 1;

				if (pos + neighbors[i] == playerFront_)
				{
					cost = playerFrontCost_;
				}
				else if (pos + neighbors[i] == playerBack_)
				{
					cost = playerBackCost_;
				}

				addNeighbor(pos, pos + neighbors[i], cost);
				
			}
			else
			{
				//std::cout << "!! !" << std::endl;
			}
				
		}
		//lastPosition = pos;
		++iterations;
	}

	std::cout << "Path iterations: " << iterations << std::endl;

	if (found)
	{
		readPath();

		std::reverse(path_.begin(), path_.end());
	}
	

	return path_;
}

sf::Vector2i PathFinder::findDirection()
{

	sf::Vector2i distance((goal_.x - start_.x), (goal_.y - start_.y));

	std::array<sf::Vector2i, 4> directions;

	int x = abs(distance.x);
	int y = abs(distance.y);

	sf::Vector2i direction(0, 0);

	if (distance.x < 0) direction.x = -1;
	else /*if (distance.x > 0)*/ direction.x = 1;

	if (distance.y < 0) direction.y = -1;
	else /*if (distance.y > 0)*/ direction.y = 1;

	sf::Vector2i nextMove = start_;

	if (x > y)
	{
		directions[0] = sf::Vector2i(direction.x, 0);
		directions[1] = sf::Vector2i(0, direction.y);
		directions[2] = sf::Vector2i(0, -direction.y);
		directions[3] = sf::Vector2i(-direction.x, 0);
	}
	else
	{
		directions[0] = sf::Vector2i(0, direction.y);
		directions[1] = sf::Vector2i(direction.x, 0);
		directions[2] = sf::Vector2i(-direction.x, 0);
		directions[3] = sf::Vector2i(0, -direction.y);
	}

	for (int i = 0; i < directions.size(); ++i)
	{
		if ((start_ + directions[i] != lastPosition_ || canMoveBack_) && !isPhysical(start_ + directions[i]))
		{
			std::cout << i << ": " << directions[i].x << " " << directions[i].y << " - dir:" << direction.y << " dist:" << distance.y << " goal:" << goal_.y << "start:" << start_.y << std::endl;

			return directions[i];
		}
			
	}

	return directions[0];
}



sf::Vector2i PathFinder::getDirection(sf::Vector2i pos, sf::Vector2i next)
{

	sf::Vector2i dir = pos - next;

	if (dir.x > 1) dir.x = -1;
	else if (dir.x < -1) dir.x = 1;

	if (dir.y > 1) dir.y = -1;
	else if (dir.y < -1) dir.y = 1;

	return dir;
}

void PathFinder::readPath()
{

	sf::Vector2i pos = goal_;
	sf::Vector2i next;

	while (pos != start_)
	{
		next = cameFrom_[pos.x][pos.y];
		path_.push_back(getDirection(pos, next));

		//std::cout << (pos - next).x << " " << (pos - next).y << std::endl;

		pos = next;
	}
}



void PathFinder::addNeighbor(sf::Vector2i currentPos, sf::Vector2i neighbor, int neighborCost)
{
	neighbor = scene_->normalize(neighbor);

	float newCost = cost_[currentPos.x][currentPos.y] + neighborCost;

	if (/*!scene_->isTilePhysical(neighbor.x, neighbor.y)*/ !isPhysical(neighbor) && cost_[neighbor.x][neighbor.y] > newCost)
	{
		float priority = newCost + heuristic(neighbor);

		nodes_.push(NodePair(priority, neighbor));
		cameFrom_[neighbor.x][neighbor.y] = currentPos;
		cost_[neighbor.x][neighbor.y] = newCost;
	}
}

sf::Vector2i PathFinder::getDistance(sf::Vector2i& start, sf::Vector2i& goal)
{
	sf::Vector2i distance(abs(start.x - goal.x), abs(start.y - goal.y));

	if (distance.x >= scene_->getWidth() / 2)
		distance.x = scene_->getWidth() - distance.x;

	if (distance.y >= scene_->getHeight() / 2)
		distance.y = scene_->getHeight() - distance.y;

	return distance;
}

float length(sf::Vector2i vector)
{
	return std::sqrt(vector.x * vector.x + vector.y * vector.y);
}

float PathFinder::heuristic(sf::Vector2i current)
{
	float dx1 = current.x - goal_.x;
	float dy1 = current.y - goal_.y;
	float dx2 = start_.x - goal_.x;
	float dy2 = start_.y - goal_.y;
	float cross = abs(dx1*dy2 - dx2*dy1);

	sf::Vector2i distance = getDistance(current, goal_);

	//return 0;
	return cross*0.0000001 + (1.00001)*(distance.x + distance.y);//(abs(current.x - goal.x) + abs(current.y - goal.y));
}

bool PathFinder::isPhysical(sf::Vector2i pos)
{
	pos = scene_->normalize(pos);

	if (scene_->getTile(pos.x, pos.y) != nullptr && scene_->getTile(pos.x, pos.y)->getCategory() == "ghostBase")
	{
		if (scene_->getTile(start_.x, start_.y) != nullptr && scene_->getTile(start_.x, start_.y)->getCategory() == "ghostBase")
			return false;
		else
			return scene_->isTilePhysical(pos.x, pos.y);
	}


	return scene_->isTilePhysical(pos.x, pos.y);
}
