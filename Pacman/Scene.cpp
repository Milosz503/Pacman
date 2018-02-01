#include "Scene.h"
#include "ConsoleWindow.h"
#include "World.h"
#include "LevelManager.h"


Scene::Scene(World* world) :
	world_(world),
	player_(nullptr),
	width_(0),
	height_(0),
	entitiesToSpawn_(false)
{

	entityManager_ = world_->getEntityManager();

	setSize(20, 20);


}


Scene::~Scene()
{
}



sf::Vector2i Scene::normalize(sf::Vector2i position) const
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

Tile * Scene::getTile(int x, int y) const
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
	if (player_ == nullptr)
	{
		std::cout << "PLAYER IS NULL!" << std::endl;
	}

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

	entities_.clear();
}

void Scene::addEntity(Entity * entity)
{
	entities_.push_back(entity);


	if (entity->getCategory() == "player")
	{
		player_ = entity;

		std::cout << "player! " << entity->getCategory() << std::endl;
	}
	std::cout << "added " << entity->getCategory() << std::endl;
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



void Scene::removeTile(int x, int y)
{
	if (tiles_[x][y] == nullptr)
	{
		std::cout << "ERROR cant remove tile, it doesn't exist (x, y): " << x << " " << y << std::endl;
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

void Scene::addSpawn(sf::Vector2i position, std::string entityName, sol::table & data)
{
	spawns_.push_back(SpawnPoint());

	spawns_.back().position = position;
	spawns_.back().entityName = entityName;
	spawns_.back().data = data;
}

void Scene::spawnEntity(SpawnPoint* spawn)
{
	Entity* entity = entityManager_->createEntity(spawn->entityName);
	entity->setPosition(spawn->position);
	entity->init(spawn->data);

	addEntity(entity);

}

void Scene::spawnEntites()
{
	for (auto& spawn : spawns_)
	{
		spawnEntity(&spawn);
	}
}

void Scene::arrangeSpawnEntities()
{
	entitiesToSpawn_ = true;
}

void Scene::removeEntities()
{
	for (int i = 0; i < entities_.size(); ++i)
	{
		entities_[i]->markToRemove();
	}

}





void Scene::update()
{
	if (entitiesToSpawn_)
	{
		entitiesToSpawn_ = false;
		spawnEntites();
	}


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

	for (int i = 0; i < entities_.size(); ++i)
	{
		if (entities_[i]->isToRemove())
		{
			if (entities_[i]->getCategory() == "player" && entities_[i] == player_)
				player_ = nullptr;

			delete entities_[i];
			entities_[i] = nullptr;
		}
	}

	entities_.erase(std::remove(entities_.begin(), entities_.end(), nullptr), entities_.end());

	//std::cout << entities_.size() << std::endl;

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
	if(player_ != nullptr)
		world_->getConsole()->draw(*player_);

}

