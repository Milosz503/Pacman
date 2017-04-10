#include "World.h"

#include <iostream>
#include <algorithm>


World::World(State::Context context) :
	width_(40),
	height_(40),
	offsetX_(0),
	offsetY_(0),
	score_(0),
	spawnPoint_(2 + offsetX_, 2 + offsetY_),
	console_(context.console),
	textureManager_(context.textureManager),
	playerController_(context.playerController),
	physics_(this),
	entityController_(this),
	frameCounter_(0)
	
{

	prepareLevel();

}

int World::getScore()
{
	return score_;
}

World::~World()
{
}





void World::update(sf::Time dt)
{
	playerController_->update(dt, player_);
	

	for (auto& entity : entities_)
	{
		entityController_.update(entity);
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
	handleDynamicCollisions();

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
	entityController_.draw();


	for (auto& entity : entities_)
	{
		console_->draw(*entity);
	}
	console_->draw(*player_);

	
	
}



void World::handleStaticCollisions()
{
	std::list<Physics::StaticPair> collisions;

	physics_.checkStaticCollisions(collisions);

	for (auto& collision : collisions)
	{
		//collision.second->setTexture(textureManager_->getTexture(L'O', CharacterColor::Red));

		std::cout << "KOLIZJA" << std::endl;

		if (collision.first->getType() == Entity::Ghost)
		{
			entityController_.handleCollision(collision.first, collision.second);
		}


		switch (collision.second->getType())
		{
		case Tile::Point:
			removeTile(collision.second->getX(), collision.second->getY());
			score_++;
			break;

		default:
			break;
		}

	}

}

bool matchesCategories(Physics::DynamicPair& colliders, Entity::Type type1, Entity::Type type2)
{
	Entity::Type col1 = colliders.first->getType();
	Entity::Type col2 = colliders.second->getType();

	if (col1 == type1 && col2 == type2)
		return true;
	else if (col1 == type2 && col2 == type1)
	{
		std::swap(colliders.first, colliders.second);
		return true;
	}
	return false;
}

void World::handleDynamicCollisions()
{

	std::list<Physics::DynamicPair> collisions;

	physics_.checkDynamicCollisions(collisions);

	for (auto& colliders : collisions)
	{

		if (matchesCategories(colliders, Entity::Pacman, Entity::Ghost))
		{
			if (colliders.second->isVulnerable())
			{
				colliders.second->setPosition(15, 15);
			}

			else if (colliders.first->isVulnerable())
			{
				//player_->setPosition(spawnPoint_);

				//colliders.second->setVulnerability(true, 120);
				//colliders.first->setVulnerability(false, 120);
			}

			
		}

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
			addTile(Tile::Wall, width_ - 1, y);

			if (y == 1)
			{
				for (int x = 1; x < width_ - 1; ++x)
				{
					addTile(Tile::Point, x, y);
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

	addTile(Tile::Wall, 3, 3);
	addTile(Tile::Wall, 4, 3);
	addTile(Tile::Wall, 5, 4);
	addTile(Tile::Wall, 5, 5);
	addTile(Tile::Wall, 5, 6);
	addTile(Tile::Wall, 6, 6);

	addEntity(Entity::Pacman, 7, 7);
	player_ = entities_.back();

	addEntity(Entity::Ghost, 7, 9);
	//addEntity(Entity::SlowGhost, 8, 10);
	//addEntity(Entity::Ghost, 8, 5);

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

	if (x >= 0 && y >= 0 &&
		x < width_ && y < height_)
	{
		if (tiles_[x][y] != nullptr)
		{
			delete tiles_[x][y];
			tiles_[x][y] = nullptr;
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
	x -= offsetX_;
	y -= offsetY_;

	if (x < 0 || y < 0 || x >= width_ || y >= height_)
		return nullptr;

	return tiles_[x][y];
}

std::vector<Entity*>& World::getEntities()
{
	return entities_;
}

Entity * World::getPlayer()
{
	return player_;
}

unsigned long long World::getFrameNumber()
{
	return frameCounter_;
}

sf::IntRect World::getBounds()
{
	return sf::IntRect(offsetX_, offsetY_, width_, height_);
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
		return true;

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

bool World::isInside(int x, int y)
{
	x -= offsetX_;
	y -= offsetY_;

	return (x >= 0 && x < width_
		&& y >= 0 && y < height_);
}
