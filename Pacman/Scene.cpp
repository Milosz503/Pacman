#include "Scene.h"
#include "Teleport.h"
#include "ConsoleWindow.h"
#include "World.h"
#include "LevelManager.h"


Scene::Scene(World* world) :
	world_(world),
	player_(nullptr),
	width_(0),
	height_(0)
{
	//addEntity(Entity::Pacman, 1, 1);
	//player_ = entities_.back();

	setSize(20, 20);


}


Scene::~Scene()
{
}


void Scene::prepareLevel(Level * level)
{
	width_ = level->getSize().x;
	height_ = level->getSize().y;

	tiles_.resize(width_);

	for (int x = 0; x < tiles_.size(); ++x)
	{
		tiles_[x].resize(height_);
	}

	for (int x = 0; x < width_; ++x)
	{
		for (int y = 0; y < height_; ++y)
		{
			tiles_[x][y] = nullptr;
		}
	}

	for (int x = 0; x < width_; ++x)
	{
		for (int y = 0; y < height_; ++y)
		{
			if (level->getTile(x, y) != Tile::None)
				addTile(level->getTile(x, y), x, y);
		}
	}


	//for (int y = 0; y < height_; ++y)
	//{
	//	if (y == 0 || y == height_ - 1)
	//	{
	//		for (int x = 0; x < width_; ++x)
	//		{
	//			addTile(Tile::Wall, x, y);
	//		}
	//	}
	//	else
	//	{
	//		addTile(Tile::Wall, 0, y);
	//		addTile(Tile::Wall, width_ - 1, y);
	//	}

	//}
	//addTile(Tile::Teleport, 2, height_ - 3);
	//addTile(Tile::Point, 3, 3);

	//addTeleport(0, 10, width_ - 2, 10);
	//addTeleport(1, 10, width_ - 2, 10);
	//addTeleport(width_ - 1, 10, 1, 10);
	//addTeleport(width_ - 2, 10, 1, 10);


	

	addEntity(Entity::Ghost, 2, 1);
	//addEntity(Entity::SlowGhost, 1, height_ - 2);
	//addEntity(Entity::SlowGhost, width_ - 2, 1);
}


unsigned Scene::addH(int x, unsigned offset)
{
	x += offset;

	if (x >= width_)
		return x - width_;

	return x;
}

unsigned Scene::addV(int y, unsigned offset)
{
	y += offset;

	if (y >= height_)
		return y - height_;

	return y;
}

unsigned Scene::subtractH(int x, unsigned offset)
{
	x -= offset;

	if (x < 0)
		return width_ - x;

	return x;
}

unsigned Scene::subtractV(int y, unsigned offset)
{
	y += offset;

	if (y < 0)
		return height_ - y;

	return y;
}

unsigned Scene::normalizeH(int x)
{
	if (x >= width_)
		return x - width_;
	if (x < 0)
		return width_ - x;

	return x;
}

unsigned Scene::normalizeV(int y)
{
	if (y >= height_)
		return y - height_;
	if (y < 0)
		return height_ - y;

	return y;
}

sf::Vector2i Scene::normalize(sf::Vector2i position)
{
	if (position.x >= width_)
		position.x -= width_;
	if (position.x < 0)
		position.x = width_ + position.x;

	if (position.y >= height_)
		position.y -= height_;
	if (position.y < 0)
		position.y = height_ + position.y;

	return position;
}

bool Scene::isInside(unsigned x, unsigned y)
{
	if (x < width_ && y < height_)
		return true;

	return false;
}

bool Scene::isTilePhysical(int x, int y)
{
	

	sf::Vector2i pos = normalize(sf::Vector2i(x, y));


	if (tiles_[pos.x][pos.y] == nullptr)
		return false;

	return tiles_[pos.x][pos.y]->isPhysical();
}

bool Scene::isTilePhysicalF(sf::Vector2i & pos)
{
	if (tiles_[pos.x][pos.y] == nullptr)
		return false;

	return tiles_[pos.x][pos.y]->isPhysical();
}

Tile * Scene::getTile(int x, int y)
{
	sf::Vector2i pos = normalize(sf::Vector2i(x, y));

	return tiles_[pos.x][pos.y];
}

std::vector<Entity*>& Scene::getEntities()
{
	return entities_;
}

Entity * Scene::getPlayer()
{
	return player_;
}

unsigned Scene::getWidth()
{
	return width_;
}

unsigned Scene::getHeight()
{
	return height_;
}

void Scene::setSize(int width, int height)
{
	int lastW = width_;
	int lastH = height_;

	width_ = width;
	height_ = height;

	tiles_.resize(width_);

	for (int x = lastW; x < tiles_.size(); ++x)
	{
		tiles_[x].resize(height_);
	}

	for (int x = lastW; x < width_; ++x)
	{
		for (int y = lastH; y < height_; ++y)
		{
			tiles_[x][y] = nullptr;
		}
	}
}

void Scene::addEntity(Entity * entity)
{
	entities_.push_back(entity);

	if (entity->getType() == Entity::Pacman)
	{
		player_ = entity;
	}
}

void Scene::addEntity(Entity::Type type, int x, int y)
{
	entities_.push_back(new Entity(world_, type, x,  y));

	if (type == Entity::Pacman)
		player_ = entities_.back();
}

void Scene::addTile(Tile::Type type, int x, int y)
{
	if (type == Tile::Teleport)
	{
		Teleport* teleport = new Teleport(world_, x, y);
		teleport->setTeleportLocation(3, 3);
		tiles_[x][y] = teleport;
	}
	else
	{
		tiles_[x][y] = new Tile(world_, type,  x, y);
	}
}

void Scene::addTile(luabridge::LuaRef & data, int x, int y)
{
	tiles_[x][y] = new Tile(world_, data, x, y);

}

void Scene::addTile(std::string tileName, int x, int y)
{
	Tile* tile = world_->getEntityManager()->createTile(tileName);
	tile->setPosition(x, y);

	tiles_[x][y] = tile;
}

void Scene::addTile(Tile * tile)
{
	tiles_[tile->getX()][tile->getY()] = tile;
}

void Scene::addTeleport(int x, int y, int targetX, int targetY)
{
	Teleport* teleport = new Teleport(world_, x, y);
	teleport->setTeleportLocation(targetX, targetY);
	tiles_[x][y] = teleport;
}

void Scene::removeTile(int x, int y)
{
	if (tiles_[x][y] == nullptr)
	{
		std::cout << "ERROR cant remove tile, it doesn't exist" << std::endl;
		return;
	}
	tiles_[x][y]->markToRemove();
	//delete tiles_[x][y];
	//tiles_[x][y] = nullptr;
	std::cout << "Tile removed" << std::endl;
}

void Scene::moveEntity(Entity * entity, sf::Vector2i & move)
{

	entity->move(move);

	entity->setPosition(normalize(entity->getPosition()));

}



void Scene::update()
{

	unsigned long long frameNumber = world_->getFrameNumber();

	for (auto& entity : entities_)
	{
		entity->update();

		
	}

	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if (tiles_[x][y] != nullptr)
			{
				if (tiles_[x][y]->isToRemove())
				{
					delete tiles_[x][y];
					tiles_[x][y] = nullptr;
				}
				else
				{
					tiles_[x][y]->update();

				}
				
			}
				
		}
	}

}

void Scene::draw()
{
	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if (tiles_[x][y] != nullptr)
				world_->getConsole()->draw(*tiles_[x][y]);
		}
	}


	for (auto& entity : entities_)
	{
		world_->getConsole()->draw(*entity);
	}
	world_->getConsole()->draw(*player_);

}

