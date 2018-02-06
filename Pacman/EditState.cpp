#include "EditState.h"
#include "ConsoleTypes.h"
#include "sol.hpp"
#include <algorithm>

#include "imgui.h"
#include "imgui-SFML.h"

#include <iostream>

EditState::EditState(StateStack & stack, Context context) :
	State(stack, context),
	textureManager_(context.textureManager),
	console_(context.console),
	levelFile_(*context.levelFile),
	objectData_(lua_, sol::create),
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
	ImGui::Begin("Hello, world!");
	ImGui::Button("Look at this pretty button");
	ImGui::ColorButton(ImVec4(1, 1, 0, 1));

	static float f = 0.0f;
	ImGui::Text("Hello, world!");
	ImGui::SliderFloat("float", &f, 0.0f, 1.0f);
	ImGui::Text("Application average %.3f ms/frame (%.1f FPS)", 1000.0f / ImGui::GetIO().Framerate, ImGui::GetIO().Framerate);

	sf::Sprite sprite;
	sprite.setTexture(getContext().textureManager->getTileset());

	for (int i = 0; i < 16; ++i)
	{
		sprite.setTextureRect(sf::IntRect(i * 9, 1, 8, 8));

		ImGui::PushID(i);
		
		if (ImGui::ImageButton(sprite, sf::Vector2f(16, 16)))
		{
			std::cout << i << std::endl;
		}
		ImGui::PopID();

		ImGui::SameLine(-10, 0);

	}


	ImGui::End();

	ImGui::SetNextWindowPos(ImVec2(650, 20), ImGuiSetCond_FirstUseEver);
	ImGui::ShowTestWindow();

	if (Mouse::isButtonPressed(Mouse::Button::Left))
	{
		sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

		pos.x /= console_->getFontSize();
		pos.y /= console_->getFontSize();



		if (pos.x < width_ && pos.y < height_ && pos.x >= 0 && pos.y >= 0)
		{
			if(brush_.type == Brush::Tile)
				level_[pos.x][pos.y] = brush_.value;

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
		/*if (event.key.code >= Keyboard::Num1 && event.key.code < Keyboard::Num1 + tiles_.size() + entities_.size())
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
		}*/


		
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
					spawns_.push_back(Spawn(brush_.value, pos, objectData_));
					objectData_ = sol::table(lua_, sol::create);
				}
				else if (brush_.type == Brush::SelectEntity)
				{
					auto it = std::find_if(spawns_.begin(), spawns_.end(), [&](const Spawn& p)
					{
						if (p.position == pos)
							return true;
						return false;
					});

					if (it != spawns_.end())
					{
						brush_.selectedEntity = it - spawns_.begin();
					}
				}
			}
			//if (pos.x < width_ && pos.y < height_ + tiles_.size() + entities_.size() + 1 && pos.x >= 0 && pos.y > height_)
			//{
			//	int value = pos.y - height_ - 1;

			//	if (value >= tiles_.size())
			//	{
			//		brush_.type = Brush::Entity;
			//		brush_.value = value - tiles_.size();
			//	}
			//	else
			//	{
			//		brush_.type = Brush::Tile;
			//		brush_.value = value;
			//	}

			//}
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
	palette();
	objectConfiguration();
	

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




void EditState::palette()
{

	ImGui::Begin("Palette");

	//sf::Sprite sprite;
	//sprite.setTexture(getContext().textureManager->getTileset());

	//for (int i = 0; i < 16; ++i)
	//{
	//	sprite.setTextureRect(sf::IntRect(i * 9, 1, 8, 8));

	//	ImGui::PushID(i);
	//	if (ImGui::ImageButton(sprite, sf::Vector2f(16, 16)))
	//	{
	//		std::cout << i << std::endl;
	//	}
	//	ImGui::PopID();

	//	ImGui::SameLine();
	//}


	if (brush_.type == Brush::SelectEntity)
	{
		ImGui::PushStyleColor(ImGuiCol_Button, ImVec4(0.8, 1, 1, 1));

		if (ImGui::Button("Select"))
		{
			brush_.type = Brush::SelectEntity;
		}
		ImGui::PopStyleColor();
	}
	else
	{
		if (ImGui::Button("Select"))
		{
			brush_.type = Brush::SelectEntity;
		}
	}
		

	
	bool isSelected;

	for (int i = 0; i < tiles_.size(); ++i)
	{
		if (brush_.type == Brush::Tile && brush_.value == i)
		{
			isSelected = true;
		}
		else
		{
			isSelected = false;

		}
		if (objectButton(tiles_[i], isSelected))
		{

				brush_.type = Brush::Tile;
				brush_.value = i;

		}
		

	}

	for (int i = 0; i < entities_.size(); ++i)
	{
		if (brush_.type == Brush::Entity && brush_.value == i)
		{
			isSelected = true;
		}
		else
		{
			isSelected = false;
		}

		if (objectButton(entities_[i], isSelected))
		{
			brush_.type = Brush::Entity;
			brush_.value = i;
		}

	}


	sf::Vector2i pos = Mouse::getPosition(*getContext().console->getWindow());

	pos.x /= console_->getFontSize();
	pos.y /= console_->getFontSize();

	ImGui::Separator();
	ImGui::Text("Tile x:%d, y:%d", pos.x, pos.y);

	if (brush_.type == Brush::SelectEntity)
	{
		ImGui::Separator();
		ImGui::Text("Selected id:%d,  entities:%d", brush_.selectedEntity, spawns_.size());
	}


	ImGui::End();

}

bool EditState::objectButton(ObjectIcon object, bool isSelected)
{

	bool answer = false;

	sf::Sprite buttonSprite;
	buttonSprite.setTexture(getContext().textureManager->getTileset());


	sf::IntRect rect;
	rect.width = 8;
	rect.height = 8;
	rect.left = object.texture.rect.x * 9;
	rect.top = object.texture.rect.y * 9 + 1;

	buttonSprite.setTextureRect(rect);

	ImGui::BeginGroup();
	//ImGui::PushID(key);

	if(isSelected)
		ImGui::Image(buttonSprite, sf::Vector2f(16, 16), sf::Color::White, sf::Color::White);
	else
		ImGui::Image(buttonSprite, sf::Vector2f(16, 16));

	
	//ImGui::PopID();
	//ImGui::PushID(key*1000);
	ImGui::SameLine(0, 4);




	if(ImGui::Button(object.name.c_str()))
	{
		/*int value = key - 1;

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

		std::cout << key << std::endl;*/

		answer = true;
	}

	//ImGui::PopID();
	ImGui::EndGroup();
	if (ImGui::IsItemClicked())
	{
		std::cout << "Click!" << std::endl;
	}
	return answer;
}

void EditState::objectConfiguration()
{
	ImGui::Begin("Object data");



	sol::table* table = &objectData_;

	if (brush_.type == Brush::Entity)
	{
		table = &objectData_;
	}
	else if (brush_.type == Brush::SelectEntity)
	{
		if (brush_.selectedEntity >= 0 && brush_.selectedEntity < spawns_.size())
		{
			table = &spawns_[brush_.selectedEntity].objectData;
		}
		else
		{
			ImGui::Text("No entity is selected");
			ImGui::End();
			return;
		}
	}
	else
	{
		ImGui::Text("Not available");
		ImGui::End();
		return;
	}

	int id = 0;
	for (auto& attribute : *table)
	{
		if (attribute.first.is<std::string>())
		{
			std::string name = attribute.first.as<std::string>();

			auto data = attribute.second;

			ImGui::PushID(id);

			ImGui::Text(name.c_str());
			ImGui::SameLine();
			
			if (data.get_type() == sol::type::number)
			{
				float value = data.as<float>();
				ImGui::InputFloat("", &value);
				
				(*table)[name] = value;
			}
			else if (data.get_type() == sol::type::string)
			{
				std::string value = data.as<std::string>();

				int bufSize = 20 >= value.length() ? 20 : value.length();

				char* buf = new char[bufSize];
				strcpy_s(buf, bufSize, data.as<std::string>().c_str());

				ImGui::InputText("", buf, bufSize);

				(*table)[name] = std::string(buf);

			}
			else
			{
				ImGui::Text("unknown type");
			}


		}
		ImGui::PopID();
		++id;
	}

	if (ImGui::Button("Add variable"))
		ImGui::OpenPopup("Variable");

	ImGui::SetNextWindowSize(ImVec2(200, 150));
	if (ImGui::BeginPopupModal("Variable", NULL, ImGuiWindowFlags_NoResize))
	{
		ImGui::Text("New variable");

		static char name[20] = "";

		ImGui::InputText("Name", name, 20);

		static int varType = 0;

		ImGui::Combo("Type", &varType, "string\0number\0\0");

		static float valueN = 0;
		static char valueS[20] = "";

		//if (varType == 0)
		//{
		//	ImGui::InputText("Value", valueS, 20);
		//}
		//else if (varType == 1)
		//{
		//	ImGui::InputFloat("Value##2", &valueN);
		//}

		if (ImGui::Button("Add"))
		{
	
			if (name != "")
			{

				if (varType == 0)
					(*table)[std::string(name)] = "";
				else
					(*table)[std::string(name)] = 0;


				strcpy_s(name, 20, "");
			}
			ImGui::CloseCurrentPopup();
		}
		ImGui::SameLine();
		if (ImGui::Button("cancel")) ImGui::CloseCurrentPopup();
		

		ImGui::EndPopup();
	}

	
	if (brush_.type == Brush::SelectEntity)
	{
		if (brush_.selectedEntity >= 0 && brush_.selectedEntity < spawns_.size())
		{
			Spawn& spawn = spawns_[brush_.selectedEntity];

			ImGui::Separator();

			ImGui::Text("Position:");
			ImGui::SameLine();
			int v[2] = { spawn.position.x, spawn.position.y };

			ImGui::InputInt2("##positionInput", v);

			spawn.position.x = v[0];
			spawn.position.y = v[1];


		}
	}


	ImGui::End();


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
		Spawn& spawn = spawns_[i];
		sprite.setTexture(entities_[spawn.entity].texture);
		sprite.setPosition(spawn.position);

		console_->draw(sprite);
	}

}



void EditState::loadObjects()
{
	sol::state lua;


	lua.open_libraries(sol::lib::base, sol::lib::math, sol::lib::package, sol::lib::table, sol::lib::io, sol::lib::string);
	try {
		lua.script_file("data/entities.lua");
	}
	catch (sol::error e) {
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
	//sol::state lua;
	lua_.open_libraries(sol::lib::base);
	auto result = lua_.script_file(levelFile_);
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading level: " << e.what() << std::endl;
		return;
	}

	sol::table level = lua_["level"];
	sol::table tiles = lua_["tiles"];

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

	sol::table objects = lua_["objects"];

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

					sol::object data = object["data"];

					if (data.get_type() == sol::type::table)
					{
						Spawn spawn(getEntity(name.value()), sf::Vector2i(x, y), object["data"]);
						spawns_.push_back(spawn);
					}
						
					else
					{
						Spawn spawn(getEntity(name.value()), sf::Vector2i(x, y), sol::table(lua_, sol::create));
						spawns_.push_back(spawn);
					}
						
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
	//sol::state lua;
	lua_.open_libraries(sol::lib::base, sol::lib::io, sol::lib::string, sol::lib::math, sol::lib::table, sol::lib::package);
	auto result = lua_.script_file("data/scripts/data_generator.lua");
	if (!result.valid())
	{
		sol::error e = result;
		std::cout << "Error loading data_generator: " << e.what() << std::endl;
		return;
	}

	lua_.create_table("tiles");
	lua_.create_table("level");
	lua_.create_table("objects");

	lua_["level"]["width"] = width_;
	lua_["level"]["height"] = height_;

	for (int y = 1; y <= height_; ++y)
	{
		lua_["level"][y] = sol::table(lua_, sol::create);
		for (int x = 1; x <= width_; ++x)
		{
			lua_["level"][y][x] = level_[x - 1][y - 1];
		}
	}

	for (int i = 0; i < tiles_.size(); ++i)
	{
		lua_["tiles"][i] = sol::table(lua_, sol::create);
		lua_["tiles"][i]["name"] = tiles_[i].name;
	}

	for (int i = 0; i < spawns_.size(); ++i)
	{
		sol::table object(lua_, sol::create);

		std::string name = entities_[spawns_[i].entity].name;
		sf::Vector2i position = spawns_[i].position;

		object["name"] = name;
		object["x"] = position.x;
		object["y"] = position.y;
		object["data"] = spawns_[i].objectData;

		lua_["objects"][i + 1] = object;
	}


	sol::table generator = lua_["generator"];
	if (generator.valid())
	{
		sol::protected_function openFile = generator["openFile"];
		sol::protected_function generate = generator["generate"];
		sol::protected_function closeFile = generator["closeFile"];

		auto result = openFile(levelFile_);
		if (result.valid())
		{

			sol::protected_function_result result;

			result = generate("level", lua_["level"]);
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}

			result = generate("tiles", lua_["tiles"]);
			if (!result.valid())
			{
				sol::error e = result;
				std::cout << "Saving level FAILED: " << e.what() << std::endl;
			}

			result = generate("objects", lua_["objects"]);
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
