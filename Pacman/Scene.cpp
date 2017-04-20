#include "Scene.h"
#include "Teleport.h"


Scene::Scene(GameSystems systems) :
	System(systems),
	player_(nullptr)
{
}


Scene::~Scene()
{
}


void Scene::prepareLevel(Level * level)
{
	width_ = level->getSize().x + 2;
	height_ = level->getSize().y + 2;

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

	for (int x = 0; x < width_ - 2; ++x)
	{
		for (int y = 0; y < height_ - 2; ++y)
		{
			if (level->getTile(x, y) != Tile::None)
				addTile(level->getTile(x, y), x + 1, y + 1);
		}
	}


	for (int y = 0; y < height_; ++y)
	{
		if (y == 0 || y == height_ - 1)
		{
			for (int x = 0; x < width_; ++x)
			{
				addTile(Tile::Wall, x, y);
			}
		}
		else
		{
			addTile(Tile::Wall, 0, y);
			addTile(Tile::Wall, width_ - 1, y);

			if (y == 1)
			{
				for (int x = 1; x < width_ - 1; ++x)
				{
					//addTile(Tile::Point, x, y);
				}
			}
			if (y > 2 && y < height_ - 3 && y != 10)
			{
				//addTile(Tile::Wall, 8, y);
				//addTile(Tile::Wall, 10, y);
				//addTile(Tile::Wall, 12, y);
			}
		}

	}
	//addTile(Tile::Teleport, 2, height_ - 3);
	addTile(Tile::Point, 3, 3);

	addTeleport(0, 10, width_ - 2, 10);
	addTeleport(1, 10, width_ - 2, 10);
	addTeleport(width_ - 1, 10, 1, 10);
	addTeleport(width_ - 2, 10, 1, 10);


	addEntity(Entity::Pacman, 7, 7);
	player_ = entities_.back();

	addEntity(Entity::Ghost, 1, 1);
	addEntity(Entity::SlowGhost, 1, height_ - 2);
	addEntity(Entity::SlowGhost, width_ - 2, 1);
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
		position.x = width_ - position.x;

	if (position.y >= height_)
		position.y -= height_;
	if (position.y < 0)
		position.y = height_ - position.y;

	return position;
}

bool Scene::isInside(unsigned x, unsigned y)
{
	if (x < width_ && y < height_)
		return true;

	return false;
}

bool Scene::isTilePhysical(unsigned x, unsigned y)
{
	if (tiles_[x][y] == nullptr)
		return false;

	return tiles_[x][y]->isPhysical();
}

Tile * Scene::getTile(unsigned x, unsigned y)
{
	return tiles_[x][y];
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

void Scene::addEntity(Entity::Type type, int x, int y)
{
	entities_.push_back(new Entity(&getSystems(), type, x,  y));

	if (type == Entity::Pacman)
		player_ = entities_.back();
}

void Scene::addTile(Tile::Type type, int x, int y)
{
	if (type == Tile::Teleport)
	{
		Teleport* teleport = new Teleport(&getSystems(), x, y);
		teleport->setTeleportLocation(3, 3);
		tiles_[x][y] = teleport;
	}
	else
	{
		tiles_[x][y] = new Tile(&getSystems(), type,  x, y);
	}
}

void Scene::addTeleport(int x, int y, int targetX, int targetY)
{
	Teleport* teleport = new Teleport(&getSystems(), x, y);
	teleport->setTeleportLocation(targetX, targetY);
	tiles_[x][y] = teleport;
}



void Scene::update()
{

	unsigned long long frameNumber = getSystems().frameSystem->getFrameNumber();

	for (auto& entity : entities_)
	{
		entity->update();

		if (tiles_[entity->getX()][entity->getY()] != nullptr && tiles_[entity->getX()][entity->getY()]->getType() == Tile::Teleport)
		{
			if (entity->isReadyToMove())
			{
				Teleport* teleport = static_cast<Teleport*>(tiles_[entity->getX()][entity->getY()]);

				entity->teleport(teleport->getTeleportLocation());

			}
		}
	}

	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if (tiles_[x][y] != nullptr)
				tiles_[x][y]->update();
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
				getSystems().console->draw(*tiles_[x][y]);
		}
	}


	for (auto& entity : entities_)
	{
		getSystems().console->draw(*entity);
	}
	getSystems().console->draw(*player_);

}

