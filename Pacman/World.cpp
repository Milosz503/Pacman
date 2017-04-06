#include "World.h"



World::World(State::Context context) :
	console_(context.console),
	textureManager_(context.textureManager),
	playerController_(context.playerController),
	width_(20),
	height_(20),
	offsetX_(0),
	offsetY_(0)
{

	prepareLevel();

}

World::~World()
{
}





void World::update(sf::Time dt)
{
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
}

void World::handleEvent(sf::Event event)
{
	
}

void World::draw()
{
	for (auto& entity : entities_)
	{
		console_->draw(*entity);
	}

	
	for (int x = 0; x < tiles_.size(); ++x)
	{
		for (int y = 0; y < tiles_[x].size(); ++y)
		{
			if (tiles_[x][y] != nullptr)
				console_->draw(*tiles_[x][y]);
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

	addEntity(Entity::Pacman, 5, 5);

	
}

void World::addTile(Tile::Type type, int x, int y)
{

	tiles_[x][y] = new Tile(this, type, offsetX_ + x, offsetY_ + y);
}

void World::addEntity(Entity::Type type, int x, int y)
{
	entities_.push_back(new Entity(this, type, x, y));
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
	return tiles_[x][y];
}

std::vector<Entity*> World::getEntities()
{
	return entities_;
}
