#include "EditSystem.h"
#include "World.h"
#include "imgui.h"
#include "imgui-SFML.h"

using namespace sf;

EditSystem::EditSystem(SystemManager * systemManager, World * world) :
	System(systemManager, world),
	lua_(world->getLuaManager().getLua()),
	brush_(BrushType::Tile)
{
	properties_ = lua_.create_table();
	scene_ = getWorld()->getScene();

	loadPrefabs();
}

void EditSystem::update()
{

	ImGui::SetNextWindowPos(ImVec2(650, 20), ImGuiSetCond_FirstUseEver);
	ImGui::ShowTestWindow();

	tilePalette();
	entitiyPalette();
	showProperties();
	
	updateBrush();

}

void EditSystem::draw()
{
}

EditSystem::~EditSystem()
{
}

void EditSystem::updateBrush()
{
	int fontSize = getWorld()->getConsole()->getFontSize();

	sf::Vector2i offset(2, 4); // do zmiany!

	Vector2i pos = sf::Mouse::getPosition(*getWorld()->getConsole()->getWindow());

	pos.x = pos.x / fontSize - offset.x;
	pos.y = pos.y / fontSize - offset.y;

	if (brush_ == BrushType::Tile)
	{
		if (Mouse::isButtonPressed(Mouse::Left))
		{

			try {
				lua_["Game"]["createTile"](tiles_[selectedObject_].name, properties_, pos.x, pos.y);
			}
			catch (sol::error e) {
				std::cout << "Error creating tile! " << e.what() << std::endl;
			}
		}
	}

	
}

void EditSystem::tilePalette()
{
	ImGui::Begin("Tiles");
	
	for (int i = 0; i < tiles_.size(); ++i)
	{
		const char* name = tiles_[i].name.c_str();
		if (i == selectedObject_)
		{
			ImGui::BulletText(name);
		}
		else if (ImGui::Button(name))
		{
			selectedObject_ = i;
			if (tiles_[i].properties.valid())
				properties_ = tiles_[i].properties();
			else
				properties_ = lua_.create_table();
		}
	}

	ImGui::End();
}

void EditSystem::entitiyPalette()
{
	ImGui::Begin("Entities");

	for (int i = 0; i < entities_.size(); ++i)
	{
		const char* name = entities_[i].name.c_str();
		if (i == selectedObject_)
		{
			ImGui::BulletText(name);
		}
		else if (ImGui::Button(name))
		{
			selectedObject_ = i;
			if (entities_[i].properties.valid())
				properties_ = entities_[i].properties();
			else
				properties_ = lua_.create_table();
		}
	}

	ImGui::End();
}

void EditSystem::showProperties()
{
	ImGui::Begin("Properties");

	try {

		if (properties_.valid()) {
			for (auto& p : properties_)
			{

				std::string name = p.first.as<std::string>();
				ImGui::Text(name.c_str());

			}
		}
	}
	catch (sol::error e) {
		std::cout << "Error showing properties! " << e.what() << std::endl;
	}

	ImGui::End();
}



void EditSystem::loadPrefabs()
{

	try {
		sol::table luaGame = lua_["Game"];

		sol::table tiles = luaGame["tileFactory"];

		for (auto& tile : tiles)
		{
			std::string name = tile.first.as<std::string>();
			sol::optional<sol::function> getProperties = tile.second.as<sol::table>()["getProperties"];
			ObjectPrefab prefab;
			prefab.name = name;
			if (getProperties)
			{
				prefab.properties = getProperties.value();
			}

			tiles_.push_back(prefab);
		}


		sol::table entities = luaGame["entityFactory"];

		for (auto& entity : entities)
		{
			std::string name = entity.first.as<std::string>();
			sol::optional<sol::function> getProperties = entity.second.as<sol::table>()["getProperties"];
			ObjectPrefab prefab;
			prefab.name = name;
			if (getProperties)
			{
				prefab.properties = getProperties.value();
			}

			entities_.push_back(prefab);
		}
	}
	catch (sol::error e) {
		std::cout << "Error loading prefabs! " << e.what() << std::endl;
	}


}



