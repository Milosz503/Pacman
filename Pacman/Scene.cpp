#include "Scene.h"
#include "ConsoleWindow.h"
#include "World.h"

Scene::Scene(World* world) :
	world_(world),
	player_(nullptr),
	width_(0),
	height_(0)
{



}


Scene::~Scene()
{
	removeEntities();
	removeTiles();

	cleanObjects();
}

void Scene::cleanObjects()
{
	//for (int x = 0; x < tiles_.size(); ++x)
	//{
	//	for (int y = 0; y < tiles_[x].size(); ++y)
	//	{
	//		if (tiles_[x][y] != nullptr)
	//		{
	//			if (tiles_[x][y]->isToRemove())
	//			{
	//				tilesToRemove_.push_back(tiles_[x][y]);
	//				tiles_[x][y] = nullptr;
	//			}
	//			else
	//			{
	//				tiles_[x][y]->update();

	//			}

	//		}

	//	}
	//}

	for (int i = 0; i < tilesToRemove_.size(); ++i)
	{
		world_->getSystems()->sendSystemEvent(new OnRemoveEvent(tilesToRemove_[i]));
		delete tilesToRemove_[i];
		tilesToRemove_[i] = nullptr;
	}
	tilesToRemove_.erase(std::remove(tilesToRemove_.begin(), tilesToRemove_.end(), nullptr), tilesToRemove_.end());

	for (int i = 0; i < entities_.size(); ++i)
	{
		if (entities_[i]->isToRemove())
		{
			if (entities_[i] == player_)
				player_ = nullptr;

			world_->getSystems()->sendSystemEvent(new OnRemoveEvent(entities_[i]));

			delete entities_[i];
			entities_[i] = nullptr;
		}
	}

	entities_.erase(std::remove(entities_.begin(), entities_.end(), nullptr), entities_.end());
}



sf::Vector2i Scene::normalize(sf::Vector2i position) const
{
		
	if (position.x < 0)
		position.x = width_ - ((-position.x)%width_);


		
	if (position.y < 0)
	{
		position.y = height_ - ((-position.y)%height_);
	}
	
	position.x %= width_;
	position.y %= height_;

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

Entity * Scene::findEntity(int x, int y) const
{
	for (auto& entity : entities_)
	{
		if (entity->getX() == x && entity->getY() == y)
			return entity;
	}

	return nullptr;
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


	for (auto& entity : entities_)
	{
		if (entity->getX() >= width || entity->getY() >= height)
		{
			entity->markToRemove();
		}
	}
	for (int x = width; x < width_; ++x)
	{
		for (int y = 0; y < height_; ++y)
		{
			if (tiles_[x][y]) {
				removeTile(tiles_[x][y]);
				std::cout << "Removed tile: (" << x << ", " << y << ")" << std::endl;
			}
		}
	}
	for (int x = 0; x < width_; ++x)
	{
		for (int y = height; y < height_; ++y)
		{
			if (tiles_[x][y]) {
				removeTile(tiles_[x][y]);
				std::cout << "Removed tile: (" << x << ", " << y << ")" << std::endl;
			}
		}
	}



	width_ = width;
	height_ = height;

	tiles_.resize(width_);

	for (int x = 0; x < tiles_.size(); ++x)
	{
		tiles_[x].resize(height_);
	}


	cleanObjects();

}



Tile * Scene::createTile(sol::table luaInstance, std::string category, int x, int y)
{
	

	Tile* tile = new Tile(world_, luaInstance);
	tile->setCategory(category);

	tile->setPosition(x, y);

	if (x < 0 || x >= width_ || y < 0 || y >= height_)
	{
		std::cout << "Warning: cannot add tile on position (" << x << ", " << y << ")" << std::endl;
		tilesToRemove_.push_back(tile);
		return tile;
	}

	if (tiles_[x][y] != nullptr)
	{
		removeTile(tiles_[x][y]);
	}
	tiles_[x][y] = tile;

	return tile;
}

Entity * Scene::createEntity(sol::table luaInstance, std::string category)
{
	Entity* entity = new Entity(world_, luaInstance);
	entity->setCategory(category);

	entities_.push_back(entity);

	if (entity->getCategory() == "player")
	{
		player_ = entity;

		std::cout << "player! " << entity->getCategory() << std::endl;
	}

	return entity;
}



void Scene::moveEntity(Entity * entity, sf::Vector2i & move)
{

	entity->move(move);

	entity->setPosition(normalize(entity->getPosition()));

}


void Scene::removeEntities()
{
	for (int i = 0; i < entities_.size(); ++i)
	{
		entities_[i]->markToRemove();
	}

}

void Scene::removeTiles()
{
	for (auto& column : tiles_)
	{
		for (auto& tile : column)
		{
			if(tile != nullptr)
				removeTile(tile);
		}
	}
}

void Scene::removeTile(Tile * tile)
{
	if (tile != nullptr && tile == tiles_[tile->getX()][tile->getY()])
	{
		tile->addedToRemove();
		tile->markToRemove();
		tilesToRemove_.push_back(tile);
		tiles_[tile->getX()][tile->getY()] = nullptr;
	}
}





void Scene::update()
{


	unsigned long long frameNumber = world_->getFrameNumber();

	for (auto& entity : entities_)
	{
		entity->update();

		
	}

	cleanObjects();

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

