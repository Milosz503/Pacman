#include "EntityController.h"




EntityController::EntityController(Stage * stage) :
	stage_(stage)
{
	graph.resize(stage_->getBounds().width);

	for (int i = 0; i < graph.size(); ++i)
	{
		graph[i].resize(stage_->getBounds().height);

		for (int j = 0; j < graph[i].size(); ++j)
		{
			graph[i][j] = Unvisited;
		}
	}

}

void EntityController::update(Entity * entity)
{
	if ((entity->getType() == Entity::Ghost || entity->getType() == Entity::SlowGhost) && entity->isReadyToMove())
	{
		/*sf::IntRect rect = stage_->getBounds();

		if (entity->getX() < rect.left + 3)
		{
			entity->setSpeed(DirectionX::Right, DirectionY::Zero);
		}
		else if (entity->getX() > rect.left + rect.width - 3)
		{
			entity->setSpeed(DirectionX::Left, DirectionY::Zero);
		}
		else if (entity->getSpeed().x == 0 && entity->getSpeed().y == 0)
		{
			entity->setSpeed(DirectionX::Left, DirectionY::Zero);
		}*/

		//sf::Vector2f dir = getDirectionToPlayer(entity->getPosition());
		sf::Vector2i dir = searchPath(entity->getPosition(), stage_->getPlayer()->getPosition());

		DirectionX::Move x;
		DirectionY::Move y;

		if (dir.x > 0) x = DirectionX::Right;
		else if (dir.x < 0) x = DirectionX::Left;
		else x = DirectionX::Zero;

		if (dir.y > 0) y = DirectionY::Down;
		else if (dir.y < 0) y = DirectionY::Up;
		else y = DirectionY::Zero;

		entity->setSpeed(x, y);

		

	}
}

void EntityController::handleCollision(Entity * entity, Tile * tile)
{
	if (entity->getType() == Entity::Ghost)
	{
		entity->setSpeed((DirectionX::Move)(-entity->getSpeed().x), (DirectionY::Move)(-entity->getSpeed().y));
	}
}

void EntityController::draw()
{
	ConsoleCharacter character(TextureManager::getTexture(L'.', CharacterColor::Red));

	for (int i = 1; i < path.size(); ++i)
	{
		character.setPosition(path[i-1]);

		stage_->getConsole()->draw(character);
	}
}

EntityController::~EntityController()
{
}

float length(sf::Vector2i vector)
{
	return std::sqrt(vector.x * vector.x + vector.y * vector.y);
}



sf::Vector2f EntityController::getDirectionToPlayer(sf::Vector2i position)
{
	sf::Vector2i dif = stage_->getPlayer()->getPosition() - position;
	sf::Vector2f vec;
	vec.x = dif.x;
	vec.y = dif.y;

	if (dif != sf::Vector2i(0, 0))
	{
		return vec / length(dif);
	}
	else
	{
		return sf::Vector2f(0, 0);
	}
	
}

sf::Vector2i EntityController::searchPath(sf::Vector2i start, sf::Vector2i target)
{
	for (int i = 0; i < graph.size(); ++i)
	{

		for (int j = 0; j < graph[i].size(); ++j)
		{
			graph[i][j] = Unvisited;
		}
	}

	sf::Vector2i dir(0, 0);

	std::swap(start, target);

	path.clear();

	std::queue<sf::Vector2i> nodes;

	graph[start.x][start.y] = Visited;

	nodes.push(start);

	int iterations = 0;

	while (!nodes.empty() && iterations < 1600)
	{
		iterations++;
		sf::Vector2i pos = nodes.front();
		nodes.pop();

		if (pos == target)
		{
			std::cout << "JEST!" << std::endl;

			switch (graph[pos.x][pos.y])
			{
			case Left:
				dir.x--;
				break;

			case Up:
				dir.y--;
				break;

			case Right:
				dir.x++;
				break;

			case Down:
				dir.y++;
				break;
			}

			while (graph[pos.x][pos.y] != Visited)
			{
				switch (graph[pos.x][pos.y])
				{
				case Left:
					pos.x--;
					break;

				case Up:
					pos.y--;
					break;

				case Right:
					pos.x++;
					break;

				case Down:
					pos.y++;
					break;
				}

				path.push_back(pos);

			}

			//clearGraph(start);
			return dir;
		}


		if (graph[pos.x + 1][pos.y] == Unvisited && !stage_->isTileCollidable(pos.x + 1, pos.y))
		{
			nodes.push(sf::Vector2i(pos.x + 1, pos.y));
			graph[pos.x + 1][pos.y] = Left;
		}
		if (graph[pos.x][pos.y+1] == Unvisited && !stage_->isTileCollidable(pos.x, pos.y + 1))
		{
			nodes.push(sf::Vector2i(pos.x, pos.y + 1));
			graph[pos.x][pos.y + 1] = Up;
		}
		if (graph[pos.x - 1][pos.y] == Unvisited && !stage_->isTileCollidable(pos.x - 1, pos.y))
		{
			nodes.push(sf::Vector2i(pos.x - 1, pos.y));
			graph[pos.x - 1][pos.y] = Right;
		}
		if (graph[pos.x][pos.y - 1] == Unvisited && !stage_->isTileCollidable(pos.x, pos.y - 1))
		{
			nodes.push(sf::Vector2i(pos.x, pos.y - 1));
			graph[pos.x][pos.y - 1] = Down;
		}
	}
	//clearGraph(start);
	std::cout << "FAIL!" << std::endl;
	return dir;
}

void EntityController::clearGraph(sf::Vector2i start)
{

	std::queue<sf::Vector2i> nodes;

	graph[start.x][start.y] = Unvisited;

	nodes.push(start);

	int iterations = 0;

	while (!nodes.empty() && iterations < 400)
	{
		iterations++;
		sf::Vector2i pos = nodes.front();
		nodes.pop();



		if (graph[pos.x + 1][pos.y] != Unvisited && isInsideGraph(Vector2f(pos.x + 1, pos.y)))
		{
			nodes.push(sf::Vector2i(pos.x + 1, pos.y));
			graph[pos.x + 1][pos.y] = Unvisited;
		}
		if (graph[pos.x][pos.y + 1] != Unvisited && isInsideGraph(Vector2f(pos.x, pos.y + 1)))
		{
			nodes.push(sf::Vector2i(pos.x, pos.y + 1));
			graph[pos.x][pos.y + 1] = Unvisited;
		}
		if (graph[pos.x - 1][pos.y] != Unvisited && isInsideGraph(Vector2f(pos.x - 1, pos.y)))
		{
			nodes.push(sf::Vector2i(pos.x - 1, pos.y));
			graph[pos.x - 1][pos.y] = Unvisited;
		}
		if (graph[pos.x][pos.y - 1] != Unvisited && isInsideGraph(Vector2f(pos.x, pos.y - 1)))
		{
			nodes.push(sf::Vector2i(pos.x, pos.y - 1));
			graph[pos.x][pos.y - 1] = Unvisited;
		}
	}

	std::cout << "FAIL!" << std::endl;

}

bool EntityController::isInsideGraph(sf::Vector2f point)
{
	if (point.x >= 0 && point.x < graph.size() &&
		point.y >= 0 && point.y < graph[0].size())
		return true;

	return false;
}
