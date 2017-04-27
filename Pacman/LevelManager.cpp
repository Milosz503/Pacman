#include "LevelManager.h"
#include "Scene.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

using namespace luabridge;

LevelManager::LevelManager(Level * level) :
	level_(level)
{
}

void LevelManager::loadFromFile(std::string fileName)
{

	

	std::string line;
	std::ifstream levelFile(fileName);



	if (levelFile.is_open())
	{
		//getline(levelFile, line);
		//int width = stoi(line);

		//getline(levelFile, line);
		//int height = stoi(line);
		int width, height;
		levelFile >> width;
		levelFile >> height;

		level_->setSize(width, height);

		int in;
		
		for (int y = 0; y < height; ++y)
		{
			for (int x = 0; x < width; ++x)
			{
				levelFile >> in;

				if (!levelFile.good())
				{
					std::cout << "ERROR reading file: " << fileName << " x, y: " << x << ", " << y << std::endl;
					return;
				}
					

				level_->setTile(x, y, (Tile::Type)(in));
			}
		}
		

		levelFile.close();
	}

	else std::cout << "Unable to open file";

}

void LevelManager::loadFromLua(std::string fileName)
{
	lua_State* L = luaL_newstate();
	luaL_dofile(L, fileName.c_str());

	if (luaL_loadfile(L, fileName.c_str()) ||
		lua_pcall(L, 0, 0, 0)) 
	{

		std::cout << "Error loading level or tiles table!" << std::endl;
		return;
	}

	//luaL_openlibs(L);

	LuaRef level = getGlobal(L, "level");
	LuaRef tiles = getGlobal(L, "tiles");

	if (level.isNil() || tiles.isNil())
	{
		std::cout << "Error loading level or tiles table!" << std::endl;
		return;
	}
	

	int width = level["width"].cast<int>();
	int height = level["height"].cast<int>();


	if (width == 0 || height == 0)
	{
		std::cout << "width or height = 0" << std::endl;
		return;
	}

	level_->setSize(width, height);

	

	for (int y = 1; y <= height; ++y)
	{
		LuaRef column = level[y];
		if (column.isNil())
		{
			std::cout << "Error parsing level! y = " << y << std::endl;
			return;
		}

		for (int x = 1; x <= width; ++x)
		{
			LuaRef tile = column[x];
			if (tile.isNil())
			{
				std::cout << "Error parsing level x!" << std::endl;
				return;
			}

			int tileID = tile.cast<int>();
			level_->setTile(x-1, y-1, static_cast<Tile::Type>(tileID));
		}
	}
}

void LevelManager::saveFile(std::string fileName)
{
	std::ofstream levelFile;
	levelFile.open(fileName);

	
	if (levelFile.is_open())
	{
		int width = level_->getSize().x;
		int height = level_->getSize().y;

		levelFile << width;
		levelFile << " ";
		levelFile << height;
		levelFile << std::endl;

		for (int y = 0; y < height; ++y)
		{
			for (int x = 0; x < width; ++x)
			{
				levelFile << level_->getTile(x, y);
				levelFile << " ";
			}
			levelFile << std::endl;
		}

		levelFile.close();
	}

	

}


void LevelManager::loadLevel(Scene * scene, std::string fileName)
{
	lua_State* L = luaL_newstate();
	if (luaL_dofile(L, fileName.c_str()) != 0)
	{
		std::cout << "Error loading file " << fileName << "  " << lua_tostring(L, -1) << std::endl;
		return;
	}
	luaL_openlibs(L);
	lua_pcall(L, 0, 0, 0);


	LuaRef level = getGlobal(L, "level");
	LuaRef tiles = getGlobal(L, "tiles");

	if (level.isNil() )//|| tiles.isNil())
	{
		std::cout << "Error loading level or tiles table!" << lua_tostring(L, -1) << std::endl;
		return;
	}
	if (level["width"].isNil() || level["height"].isNil())
	{
		std::cout << "Error width, height level!" << lua_tostring(L, -1) << std::endl;
		return;
	}

	int width = level["width"].cast<int>();
	int height = level["height"].cast<int>();


	if (width == 0 || height == 0)
	{
		std::cout << "width or height = 0" << lua_tostring(L, -1) << std::endl;
		return;
	}

	scene->setSize(width, height);





	for (int y = 1; y <= height; ++y)
	{
		LuaRef column = level[y];
		if (column.isNil())
		{
			std::cout << "Error parsing level! y = " << y << std::endl;
			return;
		}

		for (int x = 1; x <= width; ++x)
		{
			LuaRef tile = column[x];
			if (tile.isNil())
			{
				std::cout << "Error parsing level x!" << std::endl;
				return;
			}

			int tileID = tile.cast<int>();
			scene->addTile(static_cast<Tile::Type>(tileID), x - 1, y - 1);
		}
	}
	lua_close(L);
}

void LevelManager::saveLevel(Scene * scene, std::string fileName)
{
	lua_State* L = luaL_newstate();
	luaL_openlibs(L);
	if (luaL_dofile(L, "data/scripts/data_generator.lua") != 0)
	{
		std::cout << "ERROR dofile data/scripts/data_generator.lua! " << lua_tostring(L, -1) << std::endl;
		return;
	}
	
	lua_pcall(L, 0, 0, 0);


	LuaRef level = newTable(L);


	int width = scene->getWidth();
	int height = scene->getHeight();

	level["width"] = width;
	level["height"] = height;





	for (int y = 1; y <= height; ++y)
	{
		LuaRef row = newTable(L);

		for (int x = 1; x <= width; ++x)
		{
			Tile* tile = scene->getTile(x - 1, y - 1);

			if (tile != nullptr)
			{
				row[x] = static_cast<int>(tile->getType());
			}
			else
			{
				row[x] = 0;
			}
			
		}
		level[y] = row;
	}

	LuaRef generator = getGlobal(L, "generator");

	if (generator.isNil() || !generator["openFile"].isFunction() ||
		!generator["generate"].isFunction() || !generator["closeFile"].isFunction())
	{
		std::cout << "ERROR file generator! " << lua_tostring(L, -1) << std::endl;
		return;
	}

	generator["openFile"](fileName);
	generator["generate"]("level", level);
	generator["closeFile"]();

	/*LuaRef block = getGlobal(L, "serpent")["block"];
	LuaRef ans = block(level);

	std::cout << ans.cast<std::string>();*/

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

unsigned Level::addH(unsigned x, unsigned offset)
{
	x += offset;

	if (x >= width_)
		return x - width_;

	return x;
}

unsigned Level::addV(unsigned y, unsigned offset)
{
	y += offset;

	if (y >= height_)
		return y - height_;

	return y;
}

unsigned Level::subtractH(unsigned x, unsigned offset)
{
	x -= offset;

	if (x < 0)
		return width_ - x;

	return x;
}

unsigned Level::subtractV(unsigned y, unsigned offset)
{
	y += offset;

	if (y < 0)
		return height_ - y;

	return y;
}

unsigned Level::normalizeH(int x)
{
	if (x >= width_)
		return x - width_;
	if (x < 0)
		return width_ - x;

	return x;
}

unsigned Level::normalizeV(int y)
{
	if (y >= height_)
		return y - height_;
	if (y < 0)
		return height_ - y;

	return y;
}

sf::Vector2i Level::normalize(sf::Vector2i position)
{
	if (position.x >= width_)
		position.x -= width_;
	if (position.x < 0)
		position.x =  width_ - position.x;

	if (position.y >= height_)
		position.y -= height_;
	if (position.y < 0)
		position.y = height_ - position.y;

	return position;
}
