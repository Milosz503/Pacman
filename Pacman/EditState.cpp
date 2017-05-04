#include "EditState.h"
#include "ConsoleTypes.h"
#include "sol.hpp"
#include <algorithm>


EditState::EditState(StateStack & stack, Context context) :
	State(stack, context),
	textureManager_(context.textureManager),
	console_(context.console),
	levelFile_("data/level.lua"),
	selectedTile_(0)
{
	
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

			level_[pos.x][pos.y] = selectedTile_;
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


		requestStackPop();
		requestStackPush(States::Menu);
	}
	if (event.type == Event::KeyPressed && event.key.code == sf::Keyboard::S)
	{
		saveLevel();
	}

	if (event.type == Event::KeyPressed)
	{
		if (event.key.code >= Keyboard::Num1 && event.key.code < Keyboard::Num1 + tiles_.size())
		{
			selectedTile_ = event.key.code - Keyboard::Num1;
		}
	}

	return true;
}

void EditState::draw()
{

	drawLevel();
	drawMenu();
	

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
		if (tilePair.first.get_type() == sol::type::string && tilePair.second.get_type() == sol::type::table)
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

	std::sort(tiles_.begin(), tiles_.end(), [](const ObjectIcon& t1, const ObjectIcon& t2)
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

	width_ = level["width"].get_or(0);
	height_ = level["height"].get_or(0);

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
				auto& it = std::find_if(tiles_.begin(), tiles_.end(), [&](const ObjectIcon& tile)
					{
						if (tile.name == tileName.value())
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

				level_[x - 1][y - 1] = index;

			}

		}
	}

	//sol::table objects = lua["objects"];

	//if (!objects.valid())
	//{
	//	std::cout << "Error loading objects!" << std::endl;
	//}
	//else
	//{
	//	for (auto& cell : objects)
	//	{

	//		if (cell.second.get_type() == sol::type::table)
	//		{
	//			sol::table object = cell.second;

	//			sol::optional<std::string> name = object["name"];
	//			if (name)
	//			{
	//				int x = object["x"].get_or(0);
	//				int y = object["y"].get_or(0);

	//				Entity* entity = entityManager->createEntity(name.value());
	//				entity->setPosition(x, y);
	//				entity->init(object);

	//				scene->addEntity(entity);
	//			}
	//			else
	//			{
	//				std::cout << "Object doesn't have a name!" << std::endl;
	//			}
	//		}
	//		else
	//		{
	//			std::cout << "Object isn't a table!" << std::endl;
	//		}



	//	}
	//}

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



	sol::table generator = lua["generator"];
	if (generator.valid())
	{
		sol::protected_function openFile = generator["openFile"];
		sol::protected_function generate = generator["generate"];
		sol::protected_function closeFile = generator["closeFile"];

		auto result =  openFile("data/level-g.lua");
		if (result.valid())
		{

			sol::protected_function_result result;

			result =  generate("level", lua["level"]);
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



void EditState::drawMenu()
{
	ConsoleCharacter sprite;
	ConsoleText prefix;
	ConsoleText text;

	for (int i = 0; i < tiles_.size(); ++i)
	{

		int y = height_ + i;

		prefix.setText(L"" + std::to_wstring(i+1) + L" - ");
		prefix.setPosition(1, y);

		sprite.setTexture(tiles_[i].texture);
		sprite.setPosition(5, y);

		std::wstring name(tiles_[i].name.begin(), tiles_[i].name.end());
		text.setText(std::wstring(name));
		text.setPosition(7, y);

		getContext().console->draw(prefix);
		getContext().console->draw(sprite);
		getContext().console->draw(text);

	}

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

}
