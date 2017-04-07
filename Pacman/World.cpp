#include "World.h"

#include <iostream>


World::World(State::Context context) :
	console_(context.console),
	textureManager_(context.textureManager),
	playerController_(context.playerController),
	physics_(this),
	frameCounter_(0),
	width_(20),
	height_(20),
	offsetX_(5),
	offsetY_(5)
{

	prepareLevel();

}

World::~World()
{
}





void World::update(sf::Time dt)
{
	playerController_->update(dt, entities_[0]);

	for (auto& entity : entities_)
	{
		entity->update(dt);
	}

	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if(tiles_[x][y] != nullptr)
				tiles_[x][y]->update(dt);
		}
	}
	handleStaticCollisions();

	++frameCounter_;
}

void World::handleEvent(sf::Event event)
{
	playerController_->handleEvent(event, entities_[0]);
}

void World::draw()
{
	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if (tiles_[x][y] != nullptr)
				console_->draw(*tiles_[x][y]);
		}
	}

	for (auto& entity : entities_)
	{
		console_->draw(*entity);
	}

	
}

void World::prepareLevel()
{
	tiles_.resize(width_);

	for (int x = 0; x < tiles_.size(); ++x)
	{
		tiles_[x].resize(height_);
	}

	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			tiles_[x][y] = nullptr;
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
			addTile(Tile::Wall, width_-1, y);

			if (y == 1)
			{
				for (int x = 1; x < width_-1; ++x)
				{
					addTile(Tile::Point, x, y);
				}
			}
		}

	}

	addTile(Tile::Wall, 3, 3);
	addTile(Tile::Wall, 4, 3);
	addTile(Tile::Wall, 5, 4);
	addTile(Tile::Wall, 5, 5);
	addTile(Tile::Wall, 5, 6);
	addTile(Tile::Wall, 6, 6);

	addEntity(Entity::Pacman, 5, 5);

	
}

void World::addTile(Tile::Type type, int x, int y)
{

	tiles_[x][y] = new Tile(this, type, offsetX_ + x, offsetY_ + y);
}

void World::addEntity(Entity::Type type, int x, int y)
{
	entities_.push_back(new Entity(this, type, offsetX_ + x, offsetY_ + y));
}

void World::removeTile(int x, int y)
{
	x -= offsetX_;
	y -= offsetY_;

	if (x  >= 0 || y >= 0 ||
		x < width_ || y < height_)
	{
		if (tiles_[x][y] != nullptr)
		{
			delete tiles_[x][y];
			tiles_[x][y] = nullptr;
		}
	}
}

void World::handleStaticCollisions()
{
	std::list<Physics::Pair> collisions;

	physics_.checkStaticCollisions(collisions);

	for (auto& collision : collisions)
	{
		collision.second->setTexture(textureManager_->getTexture(Textures::Bomb));

		std::cout << "KOLIZJA" << std::endl;

		switch (collision.second->getType())
		{
		case Tile::Point:
			removeTile(collision.second->getX(), collision.second->getY());
			break;

		default:
			break;
		}

	}

}

ConsoleWindow * World::getConsole()
{
	return console_;
}

TextureManager * World::getTextureManager()
{
	return textureManager_;
}

PlayerController * World::getPlayerController()
{
	return playerController_;
}

Tile * World::getTile(int x, int y)
{
	return tiles_[x-offsetX_][y - offsetY_];
}

std::vector<Entity*> World::getEntities()
{
	return entities_;
}

unsigned long long World::getFrameNumber()
{
	return frameCounter_;
}

void World::moveTile(int x, int y, Vector2i offset)
{
	x -= offsetX_;
	y -= offsetY_;

	if (x + offset.x < 0 || y + offset.y < 0 ||
		x + offset.x >= width_ || y + offset.y >= height_)
	{
		delete tiles_[x][y];
		tiles_[x][y] = nullptr;
		return;
	}
		

	tiles_[x][y]->move(offset);
	tiles_[x + offset.x][y + offset.y] = tiles_[x][y];

}

bool World::isTileCollidable(int x, int y)
{
	x -= offsetX_;
	y -= offsetY_;

	if (x < 0 || y < 0 || x >= width_ || y >= height_)
		return false;

	if (tiles_[x][y] != nullptr && tiles_[x][y]->isPhysical())
	{
		return true;
	}
	else
	{
		return false;
	}
}

bool World::isTileEmpty(int x, int y)
{
	x -= offsetX_;
	y -= offsetY_;

	if (x < 0 || y < 0 || x >= width_ || y >= height_)
		return true;

	return tiles_[x][y] == nullptr;
}
