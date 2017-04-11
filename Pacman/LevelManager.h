#pragma once

#include "Tile.h"
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <SFML\Graphics.hpp>

class Level
{
public:

	void setSize(int width, int height);
	sf::Vector2i getSize();

	void setTile(int x, int y, Tile::Type type);
	Tile::Type getTile(int x, int y);


private:

	std::vector<std::vector<Tile::Type>> tiles_;

	unsigned width_ = 0;
	unsigned height_ = 0;


};


class LevelManager
{
public:
	LevelManager(Level* level);


	void loadFromFile(std::string fileName);

	~LevelManager();


private:
	Level* level_;
};

