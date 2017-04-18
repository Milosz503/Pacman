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
		entity->update(frameNumber);

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
				tiles_[x][y]->update(frameNumber);
		}
	}

}

