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

	unsigned addH(unsigned x, unsigned offset);
	unsigned addV(unsigned y, unsigned offset);
	
	unsigned subtractH(unsigned x, unsigned offset);
	unsigned subtractV(unsigned y, unsigned offset);

	unsigned normalizeH(int x);
	unsigned normalizeV(int y);
	sf::Vector2i normalize(sf::Vector2i position);


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
	void saveFile(std::string fileName);

	~LevelManager();


private:
	Level* level_;
};

