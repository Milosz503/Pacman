#include "LevelManager.h"


using namespace std;

LevelManager::LevelManager(Level * level) :
	level_(level)
{
}

void LevelManager::loadFromFile(std::string fileName)
{
	string line;
	ifstream levelFile(fileName);



	if (levelFile.is_open())
	{
		getline(levelFile, line);
		int width = stoi(line);

		getline(levelFile, line);
		int height = stoi(line);

		level_->setSize(width, height);

		int in;
		
		for (int y = 0; y < height; ++y)
		{
			for (int x = 0; x < width; ++x)
			{
				levelFile >> in;

				if (!levelFile.good())
				{
					cout << "ERROR reading file: " << fileName << " x, y: " << x << ", " << y << endl;
					return;
				}
					

				level_->setTile(x, y, (Tile::Type)(in));
			}
		}
		

		levelFile.close();
	}

	else cout << "Unable to open file";

}

LevelManager::~LevelManager()
{
}



void Level::setSize(int width, int height)
{
	width_ = width;
	height_ = height;

	tiles_.resize(width);

	for (int x = 0; x < width_; ++x)
	{
		tiles_[x].resize(height_);
		for (int y = 0; y < height_; ++y)
		{
			tiles_[x][y] = Tile::None;
		}
	}
}

sf::Vector2i Level::getSize()
{
	return sf::Vector2i(width_, height_);
}

void Level::setTile(int x, int y, Tile::Type type)
{
	tiles_[x][y] = type;
}

Tile::Type Level::getTile(int x, int y)
{
	return tiles_[x][y];
}
