#include "EditState.h"
#include "ConsoleTypes.h"
#include "sol.hpp"
#include <algorithm>


EditState::EditState(StateStack & stack, Context context) :
	State(stack, context),
	textureManager_(context.textureManager),
	console_(context.console),
	levelFile_(*context.levelFile),
	brush_(Brush::Tile, 0),
	width_(20),
	height_(20)
{
	level_.resize(width_);

	for (int x = 0; x < width_; ++x)
	{
		level_[x].resize(height_);

		for (int y = 0; y < height_; ++y)
		{
			level_[x][y] = 0;
		}
	}


	loadObjects();
	loadLevel();


	//for (auto& entityPair : entities)
	//{
	//	if (entityPair.first.get_type() == sol::type::string && entityPair.second.get_type() == sol::type::table)
	//	{
	//		std::string name = entityPair.first.as<std::string>();

	//		addEntity(name, entityPair.second);
	//	}
	//	else
	//	{
	//		std::cout << "Error parsing entity" << std::endl;
	//	}
	//}



}

EditState::~EditState()
{
}

bool EditState::update(sf::Time dt)
{
	if (Mouse::isButtonPressed(Mouse::Button::Left))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= console_->getFontSize();
		pos.y /= console_->getFontSize();



		if (pos.x < width_ && pos.y < height_ && pos.x >= 0 && pos.y >= 0)
		{
			if(brush_.type == Brush::Tile)
				level_[pos.x][pos.y] = brush_.value;
			else
			{
				//spawns_.push_back(SpawnPoint(brush_.value, pos));
			}
		}
	}

	/*if (Mouse::isButtonPressed(Mouse::Button::Right))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		int width = level_->getSize().x;
		int height = level_->getSize().y;


		if (pos.x < width && pos.y < height && pos.x >= 0 && pos.y >= 0)
		{

			level_->setTile(pos.x, pos.y, Tile::None);
		}
	}*/
	/*if (Keyboard::isKeyPressed(Keyboard::Q))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		sf::IntRect rect = world_.getBounds();

		if (pos.x >= rect.left && pos.x < rect.left + rect.width &&
			pos.y >= rect.top && pos.y < rect.top + rect.height)
		{
			if (world_.getTile(pos.x, pos.y) == nullptr)
			{
				world_.addTile(Tile::Point, pos.x, pos.y);

				if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
					pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
				{
					getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::Point);
				}
			}
		}
	}

	if (Mouse::isButtonPressed(Mouse::Button::Right))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= 16;
		pos.y /= 16;

		sf::IntRect rect = world_.getBounds();

		if (world_.getTile(pos.x, pos.y) != nullptr)
		{
			world_.removeTile(pos.x, pos.y);
			if (pos.x >= rect.left + 1 && pos.x < rect.left + rect.width - 1 &&
				pos.y >= rect.top + 1 && pos.y < rect.top + rect.height - 1)
			{
				getContext().level->setTile(pos.x - 1, pos.y - 1, Tile::None);
			}
		}
	}*/


	return true;
}

bool EditState::handleEvent(sf::Event event)
{
	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::Escape)
	{
		levelFile_ = "data/level-copy.lua";
		saveLevel();

		requestStackPop();
		requestStackPush(States::Menu);
	}
	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::S)
	{
		saveLevel();
	}

	if (event.type == Event::KeyPressed)
	{
		if (event.key.code >= Keyboard::Num1 && event.key.code < Keyboard::Num1 + tiles_.size() + entities_.size())
		{
			int value = event.key.code - Keyboard::Num1;

			if (value >= tiles_.size())
			{
				brush_.type = Brush::Entity;
				brush_.value = value - tiles_.size();
			}
			else
			{
				brush_.type = Brush::Tile;
				brush_.value = value;
			}
		}


		
	}

	if (event.type == Event::MouseButtonPressed)
	{
		if (event.key.code == Mouse::Button::Left)
		{
			sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

			pos.x /= console_->getFontSize();
			pos.y /= console_->getFontSize();



			if (pos.x < width_ && pos.y < height_ && pos.x >= 0 && pos.y >= 0)
			{

				if (brush_.type == Brush::Entity)
				{
					spawns_.push_back(Spawn(brush_.value, pos));
				}
			}
			if (pos.x < width_ && pos.y < height_ + tiles_.size() + entities_.size() + 1 && pos.x >= 0 && pos.y > height_)
			{
				int value = pos.y - height_ - 1;

				if (value >= tiles_.size())
				{
					brush_.type = Brush::Entity;
					brush_.value = value - tiles_.size();
				}
				else
				{
					brush_.type = Brush::Tile;
					brush_.value = value;
				}

			}
		}
		if (event.key.code == Mouse::Button::Right)
		{
			sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

			pos.x /= console_->getFontSize();
			pos.y /= console_->getFontSize();



			if (pos.x < width_ && pos.y < height_ && pos.x >= 0 && pos.y >= 0)
			{
				auto it = std::find_if(spawns_.begin(), spawns_.end(), [&](const Spawn& p)
				{
					if (p.position == pos)
						return true;
					return false;
				});

				if (it != spawns_.end())
				{
					spawns_.erase(it);
				}
			}

		}
	}

	return true;
}

void EditState::draw()
{

	drawLevel();
	drawMenu();
	

}
int EditState::getEntity(std::string name)
{
	auto& it = std::find_if(entities_.begin(), entities_.end(), [&](const ObjectIcon& tile)
	{
		if (tile.name == name)
			return true;
		return false;
	});

	int index;
	if (it != entities_.end())
	{
		index = it - entities_.begin();
	}
	else
	{
		index = 0;
	}


	return index;
}
int EditState::getTile(std::string name)
{
	auto& it = std::find_if(tiles_.begin(), tiles_.end(), [&](const ObjectIcon& tile)
	{
		if (tile.name == name)
			return true;
		return false;
	});

	int index;
	if (it != tiles_.end())
	{
		index = it - tiles_.begin();
	}
	else
	{
		index = 0;
	}


	return index;
}




void EditState::drawMenu()
{
	

	for (int i = 0; i < tiles_.size(); ++i)
	{
		CharacterColor::Color color = CharacterColor::White;
		if (brush_.type == Brush::Tile && brush_.value == i)
			color = CharacterColor::LightGrey;

		drawObjectOption(tiles_[i], 1+i, 1, height_ + i + 1, color);

	}

	for (int i = 0; i < entities_.size(); ++i)
	{
		CharacterColor::Color color = CharacterColor::White;
		if (brush_.type == Brush::Entity && brush_.value == i)
			color = CharacterColor::LightGrey;

		drawObjectOption(entities_[i], 1 + i + tiles_.size(), 1, height_ + i + 1 + tiles_.size(), color);

	}

}

void EditState::drawObjectOption(ObjectIcon object, int key, int x, int y, CharacterColor::Color color)
{
	ConsoleCharacter sprite;
	ConsoleText prefix;
	ConsoleText text;


	prefix.setText(std::to_wstring(key) + L" -");
	prefix.setPosition(x, y);

	sprite.setTexture(object.texture);
	sprite.setPosition(x+4, y);

	std::wstring name(object.name.begin(), object.name.end());
	text.setText(std::wstring(name));
	text.setPosition(x+6, y);
	text.setColor(color);

	getContext().console->draw(prefix);
	getContext().console->draw(sprite);
	getContext().console->draw(text);
}

void EditState::drawLevel()
{
	ConsoleCharacter sprite;
	for (int x = 0; x < width_; ++x)
	{
		for (int y = 0; y < height_; ++y)
		{
			int index = level_[x][y];
			sprite.setTexture(tiles_[index].texture);
			sprite.setPosition(x, y);


			console_->draw(sprite);
		}
	}

	for (int i = 0; i < spawns_.size(); ++i)
	{
		Spawn spawn = spawns_[i];
		sprite.setTexture(entities_[spawn.entity].texture);
		sprite.setPosition(spawn.position);

		console_->draw(sprite);
	}

}



void EditState::loadObjects()
{
	sol::state lua;


	lua.open_libraries(sol::lib::base, sol::lib::math);

	auto result = lua.script_file("data/entities.lua", &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading " << "data/entities.lua" << ": " << e.what() << std::endl;
		return;
	}


	sol::table tiles = lua["tiles"];
	if (!tiles.valid())
	{
		std::cout << "Error parsing tiles: " << std::endl;
		return;
	}

	sol::table entities = lua["entities"];
	if (!entities.valid())
	{
		std::cout << "Error parsing entities: " << std::endl;
		return;
	}

	for (auto& tilePair : tiles)
	{
		if (tilePair.first.get_type() == sol::type::string &&
			tilePair.second.get_type() == sol::type::table)
		{

			std::string name = tilePair.first.as<std::string>();
			sol::table data = tilePair.second;

			int textureY = data["texture"]["y"].get_or(0);
			int color = data["texture"]["color"].get_or(0);
			TextureCharacter textureCharacter;
			textureCharacter.rect.x = data["texture"]["x"].get_or(0);
			textureCharacter.rect.y = color * 16 + textureY;

			tiles_.push_back(ObjectIcon(name, textureCharacter));
		}
		else
		{
			std::cout << "Error parsing tile" << std::endl;
		}
	}

	for (auto& entityPair : entities)
	{
		if (entityPair.first.get_type() == sol::type::string &&
			entityPair.second.get_type() == sol::type::table)
		{

			std::string name = entityPair.first.as<std::string>();
			sol::table data = entityPair.second;

			int textureY = data["texture"]["y"].get_or(0);
			int color = data["texture"]["color"].get_or(0);
			TextureCharacter textureCharacter;
			textureCharacter.rect.x = data["texture"]["x"].get_or(0);
			textureCharacter.rect.y = color * 16 + textureY;

			entities_.push_back(ObjectIcon(name, textureCharacter));
		}
		else
		{
			std::cout << "Error parsing entity" << std::endl;
		}
	}

	std::sort(tiles_.begin(), tiles_.end(), [](const ObjectIcon& t1, const ObjectIcon& t2)
	{
		if (t1.name < t2.name)
			return true;
		return false;
	});

	std::sort(entities_.begin(), entities_.end(), [](const ObjectIcon& t1, const ObjectIcon& t2)
	{
		if (t1.name < t2.name)
			return true;
		return false;
	});

}
void EditState::loadLevel()
{
	sol::state lua;
	lua.open_libraries(sol::lib::base);
	auto result = lua.script_file(levelFile_, &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading level: " << e.what() << std::endl;
		return;
	}

	sol::table level = lua["level"];
	sol::table tiles = lua["tiles"];

	if (!level.valid() || !tiles.valid())
	{
		std::cout << "Error loading level or tiles!" << std::endl;
		return;
	}

	width_ = level["width"].get_or(20);
	height_ = level["height"].get_or(20);

	level_.resize(width_);

	for (int x = 0; x < width_; ++x)
	{
		level_[x].resize(height_);

		for (int y = 0; y < height_; ++y)
		{
			level_[x][y] = 0;
		}
	}




	for (int y = 1; y <= height_; ++y)
	{


		for (int x = 1; x <= width_; ++x)
		{
			int tileID = level[y][x].get_or(0);
			sol::optional<std::string> tileName = tiles[tileID]["name"];

			if (tileName)
			{


				level_[x - 1][y - 1] = getTile(tileName.value());

			}

		}
	}

	sol::table objects = lua["objects"];

	if (!objects.valid())
	{
		std::cout << "Error loading objects!" << std::endl;
	}
	else
	{
		for (auto& cell : objects)
		{

			if (cell.second.get_type() == sol::type::table)
			{
				sol::table object = cell.second;

				sol::optional<std::string> name = object["name"];
				if (name)
				{
					int x = object["x"].get_or(0);
					int y = object["y"].get_or(0);

					Spawn spawn(getEntity(name.value()), sf::Vector2i(x, y));
					spawns_.push_back(spawn);
				}
				else
				{
					std::cout << "Object doesn't have a name!" << std::endl;
				}
			}
			else
			{
				std::cout << "Object isn't a table!" << std::endl;
			}



		}
	}

}

void EditState::saveLevel()
{
	sol::state lua;
	lua.open_libraries(sol::lib::base, sol::lib::io, sol::lib::string, sol::lib::math, sol::lib::table, sol::lib::package);
	auto result = lua.script_file("data/scripts/data_generator.lua", &sol::simple_on_error);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading data_generator: " << e.what() << std::endl;
		return;
	}

	lua.create_table("tiles");
	lua.create_table("level");
	lua.create_table("objects");

	lua["level"]["width"] = width_;
	lua["level"]["height"] = height_;

	for (int y = 1; y <= height_; ++y)
	{
		lua["level"][y] = sol::table(lua, sol::create);
		for (int x = 1; x <= width_; ++x)
		{
			lua["level"][y][x] = level_[x - 1][y - 1];
		}
	}

	for (int i = 0; i < tiles_.size(); ++i)
	{
		lua["tiles"][i] = sol::table(lua, sol::create);
		lua["tiles"][i]["name"] = tiles_[i].name;
	}

	for (int i = 0; i < spawns_.size(); ++i)
	{
		sol::table object(lua, sol::create);

		std::string name = entities_[spawns_[i].entity].name;
		sf::Vector2i position = spawns_[i].position;

		object["name"] = name;
		object["x"] = position.x;
		object["y"] = position.y;

		lua["objects"][i + 1] = object;
	}


	sol::table generator = lua["generator"];
	if (generator.valid())
	{
		sol::protected_function openFile = generator["openFile"];
		sol::protected_function generate = generator["generate"];
		sol::protected_function closeFile = generator["closeFile"];

		auto result = openFile(levelFile_);
		if (result.valid())
		{

			sol::protected_function_result result;

			result = generate("level", lua["level"]);
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}

			result = generate("tiles", lua["tiles"]);
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}

			result = generate("objects", lua["objects"]);
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}

			result = closeFile();
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}



		}
		else
		{
			sol::error e = result;
			std::cout << "Saving level FAILED: " << e.what() << std::endl;
		}
	}
	else
	{
		std::cout << "Error with lua generator can't save level!" << std::endl;
	}

}