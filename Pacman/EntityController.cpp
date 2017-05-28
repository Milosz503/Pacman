#include "EntityController.h"
#include "World.h"
#include "ConsoleWindow.h"
#include <forward_list>
#include <limits>


EntityController::EntityController(SystemManager* systemManager, World* world) :
	System(systemManager, world),
	scene_(world->getScene()),
	finder_(scene_)
{
	/*graph.resize(scene_->getWidth());

	for (int i = 0; i < graph.size(); ++i)
	{
		graph[i].resize(scene_->getHeight());

		for (int j = 0; j < graph[i].size(); ++j)
		{
			graph[i][j] = Unvisited;
		}
	}


	distance.resize(scene_->getWidth());

	for (int i = 0; i < distance.size(); ++i)
	{
		distance[i].resize(scene_->getHeight());

		for (int j = 0; j < graph[i].size(); ++j)
		{
			distance[i][j] = 100000;
		}
	}
*/
}

void EntityController::update()
{
	std::vector<Entity*> entities = scene_->getEntities();

	for (auto& e : entities)
	{
		update(e);
	}
}




void EntityController::update(Entity * entity)
{
	if (entity->getCategory() == "ghost" && entity->isGuided() && entity->isPathEmpty() && entity->isReadyToMove())// || entity->getType() == Entity::SlowGhost) && entity->isReadyToMove())
	{
		

		sf::Vector2i destination = entity->getGoal(); /*entity->getDestination()->getPosition();
		if (entity->getDestination()->getType() == GameObject::Entity)
		{
			Entity* e = static_cast<Entity*>(entity->getDestination());
			destination += e->getNextMove();
		}*/
		

		sf::Vector2i start = entity->getPosition() + entity->getNextMove();

		sf::Vector2i lastPosition = entity->getPosition() - entity->getSpeed();

		std::string guideType = entity->getGuideType();


		/*if (start == destination)
			return;*/

		lastPosition_ = lastPosition;
		goal_ = destination;
		start_ = start;


		std::cout << "destination: " << destination.x << " " << destination.y << std::endl;

		if (guideType == A_STAR)
		{
			std::vector<sf::Vector2i>& path = finder_.findPath(start, destination, lastPosition);
			if (path.size() > 0)
			{
				entity->setPath(std::list<sf::Vector2i>(path.begin(), path.end()), destination);
			}
		}
		else if(guideType == DIRECTION)
		{
			sf::Vector2i dir = finder_.findDirectionTo(start, destination, lastPosition);
			entity->setSpeed((Direction::X)(dir.x), (Direction::Y)(dir.y));
		}
		else
		{
			std::cout << "UNKNOWN guide type! " << entity->getName() << std::endl;

			sf::Vector2i dir = finder_.findDirectionTo(start, destination, lastPosition);
			entity->setSpeed((Direction::X)(dir.x), (Direction::Y)(dir.y));
		}


		

		

		return;

	//	std::vector<sf::Vector2i> path;
	//	std::vector<NodeCost> customCosts = entity->getWages();

	//	for (auto& node : customCosts)
	//	{
	//		std::cout << "Node: " << node.x << " " << node.y << " " << node.cost << std::endl;
	//	}

	//	bool found = searchPathAStar(start,
	//		destination, path, customCosts);

	//	//this->path = path;


	//	if (path.size() > 0)
	//	{
	//		if (entity->getDestination()->getType() == GameObject::Entity)
	//		{
	//			int pathLength = 2 < path.size() ? 2 : path.size();

	//			entity->setPath(std::list<sf::Vector2i>(path.begin(), path.begin() + pathLength), destination);

	//		}
	//		else
	//		{
	//			entity->setPath(std::list<sf::Vector2i>(path.begin(), path.end()), destination);
	//		}
	//	}

	//	
	//	
	//	

	}
}

//void EntityController::handleCollision(Entity * entity, Tile * tile)
//{
//	/*if (entity->getType() == Entity::Ghost)
//	{
//		entity->setSpeed((DirectionX::Move)(-entity->getSpeed().x), (DirectionY::Move)(-entity->getSpeed().y));
//	}*/
//}

void EntityController::draw()
{
	
	ConsoleCharacter character(TextureManager::getTexture(L'*', CharacterColor::Red));

	character.setPosition(goal_);
	//getWorld()->getConsole()->draw(character);

	character.setPosition(start_);
	character.setTexture(TextureManager::getTexture(L's', CharacterColor::Grey));
	//getWorld()->getConsole()->draw(character);


	character.setPosition(lastPosition_);
	character.setTexture(TextureManager::getTexture(L'l', CharacterColor::White));
	//getWorld()->getConsole()->draw(character);

	//for (int x = 0; x < distance.size(); ++x)
	//{
	//	for (int y = 0; y < distance[x].size(); ++y)
	//	{
	//		if (distance[x][y] < 100000)
	//		{
	//			character.setPosition(x, y);
	//			character.setTexture(TextureManager::getTexture(L'0' /*+ distance[x][y]*/, CharacterColor::Blue));

	//			getWorld()->getConsole()->draw(character);
	//		}

	//	}
	//}
	//character.setTexture(TextureManager::getTexture(L'.', CharacterColor::Red));

	//sf::Vector2i pos = start;

	//for (auto& node : path)
	//{
	//	pos.x += node.x;
	//	pos.y += node.y;
	//	pos = scene_->normalize(pos);
	//	character.setPosition(pos);

	//	getWorld()->getConsole()->draw(character);
	//}
	
}

EntityController::~EntityController()
{
}





//sf::Vector2f EntityController::getDirectionToPlayer(sf::Vector2i position)
//{
//	sf::Vector2i dif = scene_->getPlayer()->getPosition() - position;
//	sf::Vector2f vec;
//	vec.x = dif.x;
//	vec.y = dif.y;
//
//	if (dif != sf::Vector2i(0, 0))
//	{
//		return vec / length(dif);
//	}
//	else
//	{
//		return sf::Vector2f(0, 0);
//	}
//	
//}

//sf::Vector2i EntityController::searchPath(sf::Vector2i start, sf::Vector2i target)
//{
//	for (int i = 0; i < graph.size(); ++i)
//	{
//
//		for (int j = 0; j < graph[i].size(); ++j)
//		{
//			graph[i][j] = Unvisited;
//		}
//	}
//
//	sf::Vector2i dir(0, 0);
//
//	std::swap(start, target);
//
//	path.clear();
//
//	std::queue<sf::Vector2i> nodes;
//
//	graph[start.x][start.y] = Visited;
//
//	nodes.push(start);
//
//	int iterations = 0;
//
//	while (!nodes.empty() && iterations < 1600)
//	{
//		iterations++;
//		sf::Vector2i pos = nodes.front();
//		nodes.pop();
//
//		if (pos == target)
//		{
//
//
//			switch (graph[pos.x][pos.y])
//			{
//			case Left:
//				dir.x--;
//				break;
//
//			case Up:
//				dir.y--;
//				break;
//
//			case Right:
//				dir.x++;
//				break;
//
//			case Down:
//				dir.y++;
//				break;
//			}
//
//			while (graph[pos.x][pos.y] != Visited)
//			{
//				switch (graph[pos.x][pos.y])
//				{
//				case Left:
//					pos.x--;
//					break;
//
//				case Up:
//					pos.y--;
//					break;
//
//				case Right:
//					pos.x++;
//					break;
//
//				case Down:
//					pos.y++;
//					break;
//				}
//
//				path.push_back(pos);
//
//			}
//
//			//clearGraph(start);
//			return dir;
//		}
//
//
//		if (graph[pos.x + 1][pos.y] == Unvisited && !scene_->isTilePhysical(pos.x + 1, pos.y))
//		{
//			nodes.push(sf::Vector2i(pos.x + 1, pos.y));
//			graph[pos.x + 1][pos.y] = Left;
//		}
//		if (graph[pos.x][pos.y+1] == Unvisited && !scene_->isTilePhysical(pos.x, pos.y + 1))
//		{
//			nodes.push(sf::Vector2i(pos.x, pos.y + 1));
//			graph[pos.x][pos.y + 1] = Up;
//		}
//		if (graph[pos.x - 1][pos.y] == Unvisited && !scene_->isTilePhysical(pos.x - 1, pos.y))
//		{
//			nodes.push(sf::Vector2i(pos.x - 1, pos.y));
//			graph[pos.x - 1][pos.y] = Right;
//		}
//		if (graph[pos.x][pos.y - 1] == Unvisited && !scene_->isTilePhysical(pos.x, pos.y - 1))
//		{
//			nodes.push(sf::Vector2i(pos.x, pos.y - 1));
//			graph[pos.x][pos.y - 1] = Down;
//		}
//	}
//	//clearGraph(start);
//
//	return dir;
//}
//
//
//int getCost(sf::Vector2i node, std::vector<NodeCost>& customCosts)
//{
//	for (auto& customNode : customCosts)
//	{
//		if (node.x == customNode.x && node.y == customNode.y)
//		{
//			return customNode.cost;
//		}
//	}
//	return 1;
//}
//
//sf::Vector2i EntityController::searchPathWage(sf::Vector2i start, sf::Vector2i target)
//{
//	for (int i = 0; i < graph.size(); ++i)
//	{
//
//		for (int j = 0; j < graph[i].size(); ++j)
//		{
//			graph[i][j] = Unvisited;
//			distance[i][j] = 100000;
//		}
//	}
//
//	sf::Vector2i dir(0, 0);
//
//	std::swap(start, target);
//
//	path.clear();
//
//
//
//	std::priority_queue<NodePair, std::vector<NodePair>, NodePairComparator> nodes;
//
//	graph[start.x][start.y] = Visited;
//	distance[start.x][start.y] = 0;
//
//	nodes.push(NodePair(0.f, start));
//
//	int iterations = 0;
//
//	while (!nodes.empty() && iterations < 200)
//	{
//		iterations++;
//		sf::Vector2i pos = nodes.top().second;
//		int currentPriority = nodes.top().first;
//		nodes.pop();
//
//		//ConsoleCharacter character(TextureManager::getTexture(L'.', CharacterColor::Red));
//		//character.setPosition(pos);
//		//stage_->getConsole()->draw(character);
//		//stage_->getConsole()->show();
//
//		//sf::sleep(sf::seconds(0.01));
//
//
//		if (pos == target)
//		{
//
//
//			switch (graph[pos.x][pos.y])
//			{
//			case Left:
//				dir.x--;
//				break;
//
//			case Up:
//				dir.y--;
//				break;
//
//			case Right:
//				dir.x++;
//				break;
//
//			case Down:
//				dir.y++;
//				break;
//			}
//
//			while (graph[pos.x][pos.y] != Visited)
//			{
//				switch (graph[pos.x][pos.y])
//				{
//				case Left:
//					pos.x--;
//					break;
//
//				case Up:
//					pos.y--;
//					break;
//
//				case Right:
//					pos.x++;
//					break;
//
//				case Down:
//					pos.y++;
//					break;
//				}
//
//				path.push_back(pos);
//
//			}
//
//			//clearGraph(start);
//			return dir;
//		}
//
//		float priority;
//		int newCost;
//
//		sf::Vector2i newPos = pos;
//		newPos.x++;
//		
//		newCost = distance[pos.x][pos.y] + 1;
//
//		priority = newCost + heuristic(target, newPos, start);
//
//		if (newCost < distance[newPos.x][newPos.y] && !scene_->isTilePhysical(newPos.x, newPos.y))
//		{
//			
//
//			nodes.push(NodePair(priority, newPos));
//			graph[newPos.x][newPos.y] = Left;
//			distance[newPos.x][newPos.y] = newCost;
//		}
//
//		newPos.x--;
//		newPos.y++;
//		priority = newCost + heuristic(target, newPos, start);
//		if (newCost < distance[newPos.x][newPos.y] && !scene_->isTilePhysical(newPos.x, newPos.y))
//		{
//			
//
//			nodes.push(NodePair(priority, newPos));
//			graph[newPos.x][newPos.y] = Up;
//			distance[newPos.x][newPos.y] = newCost;
//		}
//
//
//		newPos.x--;
//		newPos.y--;
//		priority = newCost + heuristic(target, newPos, start);
//		if (newCost < distance[newPos.x][newPos.y] && !scene_->isTilePhysical(newPos.x, newPos.y))
//		{
//			
//
//			nodes.push(NodePair(priority, newPos));
//			graph[newPos.x][newPos.y] = Right;
//			distance[newPos.x][newPos.y] = newCost;
//		}
//
//		newPos.x++;
//		newPos.y--;
//		priority = newCost + heuristic(target, newPos, start);
//		if (newCost < distance[newPos.x][newPos.y] && !scene_->isTilePhysical(newPos.x, newPos.y))
//		{
//			
//
//			nodes.push(NodePair(priority, newPos));
//			graph[newPos.x][newPos.y] = Down;
//			distance[newPos.x][newPos.y] = newCost;
//		}
//
//
//
//	}
//	//clearGraph(start);
//
//	return dir;
//}
//
//bool EntityController::searchPathAStar(sf::Vector2i start, sf::Vector2i goal,
//	std::vector<sf::Vector2i>& path, std::vector<NodeCost>& customCosts)
//{
//	const int INF = 1000000000;
//	for (int i = 0; i < graph.size(); ++i)
//	{
//
//		for (int j = 0; j < graph[i].size(); ++j)
//		{
//			graph[i][j] = Unvisited;
//			distance[i][j] = INF;
//		}
//	}
//	this->start = start;
//	std::swap(start, goal);
//
//	std::array<sf::Vector2i, 4> neighbors;
//	std::array<NodeState, 4> directions;
//
//	directions[0] = Down;
//	directions[1] = Left;
//	directions[2] = Up;
//	directions[3] = Right;
//
//
//	NodeQueue nodes;
//
//	graph[start.x][start.y] = Visited;
//	distance[start.x][start.y] = 0;
//
//	nodes.push(NodePair(0.f, start));
//	
//
//	int iterations = 0;
//
//	while (!nodes.empty() && iterations < 1600)
//	{
//		NodePair node = nodes.top();
//		nodes.pop();
//
//		sf::Vector2i pos = node.second;
//
//
//		if (pos == goal)
//		{
//
//			
//			while (graph[pos.x][pos.y] != Visited)
//			{
//				sf::Vector2i dir(0, 0);
//				switch (graph[pos.x][pos.y])
//				{
//				case Left:
//					pos.x--;
//					dir.x--;
//					break;
//
//				case Up:
//					pos.y--;
//					dir.y--;
//					break;
//
//				case Right:
//					pos.x++;
//					dir.x++;
//					break;
//
//				case Down:
//					pos.y++;
//					dir.y++;
//					break;
//				}
//				pos = scene_->normalize(pos);
//				path.push_back(dir);
//			}
//			//std::cout << "Itt: " << iterations << std::endl;
//			return true;
//		}
//
//
//
//		neighbors[0] = sf::Vector2i(pos.x, pos.y - 1);
//		neighbors[1] = sf::Vector2i(pos.x + 1, pos.y);
//		neighbors[2] = sf::Vector2i(pos.x, pos.y + 1);
//		neighbors[3] = sf::Vector2i(pos.x - 1, pos.y);
//
//		
//		
//
//
//		for (int i = 0; i < 4; ++i)
//		{
//			sf::Vector2i neighbor = scene_->normalize(neighbors[i]);
//
//			float newCost = distance[pos.x][pos.y] + getCost(neighbor, customCosts);
//
//			if (!scene_->isTilePhysical(neighbor.x, neighbor.y) && distance[neighbor.x][neighbor.y] > newCost)
//			{
//				float priority = newCost + heuristic(neighbor, goal, start);
//					
//
//				nodes.push(NodePair(priority, neighbor));
//				graph[neighbor.x][neighbor.y] = directions[i];
//				distance[neighbor.x][neighbor.y] = newCost;
//			}
//
//		}
//
//
//
//		iterations++;
//	}
////	std::cout << "Itf: " << iterations << std::endl;
//	return false;
//
//	
//}
//
//void EntityController::clearGraph(sf::Vector2i start)
//{
//
//	std::queue<sf::Vector2i> nodes;
//
//	graph[start.x][start.y] = Unvisited;
//
//	nodes.push(start);
//
//	int iterations = 0;
//
//	while (!nodes.empty() && iterations < 1600)
//	{
//		iterations++;
//		sf::Vector2i pos = nodes.front();
//		nodes.pop();
//
//
//
//		if (graph[pos.x + 1][pos.y] != Unvisited && isInsideGraph(Vector2f(pos.x + 1, pos.y)))
//		{
//			nodes.push(sf::Vector2i(pos.x + 1, pos.y));
//			graph[pos.x + 1][pos.y] = Unvisited;
//		}
//		if (graph[pos.x][pos.y + 1] != Unvisited && isInsideGraph(Vector2f(pos.x, pos.y + 1)))
//		{
//			nodes.push(sf::Vector2i(pos.x, pos.y + 1));
//			graph[pos.x][pos.y + 1] = Unvisited;
//		}
//		if (graph[pos.x - 1][pos.y] != Unvisited && isInsideGraph(Vector2f(pos.x - 1, pos.y)))
//		{
//			nodes.push(sf::Vector2i(pos.x - 1, pos.y));
//			graph[pos.x - 1][pos.y] = Unvisited;
//		}
//		if (graph[pos.x][pos.y - 1] != Unvisited && isInsideGraph(Vector2f(pos.x, pos.y - 1)))
//		{
//			nodes.push(sf::Vector2i(pos.x, pos.y - 1));
//			graph[pos.x][pos.y - 1] = Unvisited;
//		}
//	}
//
//	std::cout << "FAIL!" << std::endl;
//
//}
//
//bool EntityController::isInsideGraph(sf::Vector2f point)
//{
//	if (point.x >= 0 && point.x < graph.size() &&
//		point.y >= 0 && point.y < graph[0].size())
//		return true;
//
//	return false;
//}
//
//sf::Vector2i EntityController::getDistance(sf::Vector2i& start, sf::Vector2i& goal)
//{
//	sf::Vector2i distance(abs(start.x - goal.x), abs(start.y - goal.y));
//
//	if (distance.x >= scene_->getWidth()/2)
//		distance.x = scene_->getWidth() - distance.x;
//
//	if (distance.y >= scene_->getHeight() / 2)
//		distance.y = scene_->getHeight() - distance.y;
//
//	return distance;
//}
//
//float EntityController::heuristic(sf::Vector2i current, sf::Vector2i goal, sf::Vector2i start)
//{
//	float dx1 = current.x - goal.x;
//	float dy1 = current.y - goal.y;
//	float dx2 = start.x - goal.x;
//	float dy2 = start.y - goal.y;
//	float cross = abs(dx1*dy2 - dx2*dy1);
//
//	sf::Vector2i distance = getDistance(current, goal);
//
//	//return 0;
//	return cross*0.0000001 + (1.00001)*(distance.x + distance.y);//(abs(current.x - goal.x) + abs(current.y - goal.y));
//}
//
//void EntityController::clearData()
//{
//	path_.clear();
//
//	for (int x = 0; x < cost_.size(); ++x)
//	{
//		for (int y = 0; y < cost_[x].size(); ++y)
//		{
//			cost_[x][y] = std::numeric_limits<float>::max();
//		}
//	}
//}
//
//void EntityController::addNeighbor(sf::Vector2i neighbor, std::vector<NodeCost>& customCosts, NodeQueue & queue)
//{
//	neighbor = scene_->normalize(neighbor);
//
//}
