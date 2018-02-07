#include "EditSystem.h"
#include "World.h"
#include "imgui.h"
#include "imgui-SFML.h"

using namespace sf;

EditSystem::EditSystem(SystemManager * systemManager, World * world) :
	System(systemManager, world),
	lua_(world->getLuaManager().getLua()),
	brush_(BrushType::Entity)
{
	properties_ = lua_.create_table();
	scene_ = getWorld()->getScene();

	loadPrefabs();
}

void EditSystem::update()
{

	

}

void EditSystem::draw()
{
	ImGui::SetNextWindowPos(ImVec2(650, 20), ImGuiSetCond_FirstUseEver);
	ImGui::ShowTestWindow();

	tilePalette();
	entitiyPalette();
	showProperties();
	showPalette();

	updateTileBrush();
}

EditSystem::~EditSystem()
{
}

void EditSystem::updateTileBrush()
{
	if (ImGui::IsMouseHoveringAnyWindow())
		return;
	sf::Vector2i pos = getMousePosition();

	if (Mouse::isButtonPressed(Mouse::Left))
	{
		if (brush_ == BrushType::Tile && selectedObject_ < tiles_.size() && isInside(pos))
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

void EditSystem::onEvent(SystemEvent * e)
{
	if (e->type == SystemEvent::input)
	{
		sf::Event& event = static_cast<InputEvent*>(e)->event;
		
		if (!ImGui::IsMouseHoveringAnyWindow() && event.type == sf::Event::MouseButtonPressed)
		{
			sf::Vector2i pos = getMousePosition();

			if (brush_ == BrushType::Entity && selectedObject_ < entities_.size() && isInside(pos))
			{
				

				try {
					sol::table self = lua_["Game"]["createEntity"](entities_[selectedObject_].name, properties_);
					LuaObjectHandle& handle = self["handle"];
					//std::cout << "Pos: " << pos.x << " " << pos.y << std::endl;
					handle.setPosition(pos.x, pos.y);
				}
				catch (sol::error e) {
					std::cout << "Error creating tile! " << e.what() << std::endl;
				}
			}
			else if (brush_ == BrushType::Select)
			{
				Entity* entity = scene_->findEntity(pos.x, pos.y);
				if (entity != nullptr)
				{
					try {
						properties_ = entity->getLuaInstance()["properties"];
					}
					catch (sol::error e) {
						std::cout << "Error selecting entity! " << e.what() << std::endl;
					}
				}
			}
		}
	}
}

sf::Vector2i EditSystem::getMousePosition()
{
	int fontSize = getWorld()->getConsole()->getFontSize();

	sf::Vector2i offset(2, 4); // do zmiany!

	Vector2i pos = sf::Mouse::getPosition(*getWorld()->getConsole()->getWindow());

	pos.x = pos.x / fontSize - offset.x;
	pos.y = pos.y / fontSize - offset.y;

	return pos;
}

bool EditSystem::isInside(sf::Vector2i pos)
{
	int width = scene_->getWidth();
	int height = scene_->getHeight();

	if (pos.x >= 0 && pos.x < width &&
		pos.y >= 0 && pos.y < height)
	{
		return true;
	}

	return false;
}

void EditSystem::tilePalette()
{
	ImGui::Begin("Tiles");
	
	for (int i = 0; i < tiles_.size(); ++i)
	{
		const char* name = tiles_[i].name.c_str();
		if (i == selectedObject_ && brush_ == BrushType::Tile)
		{
			ImGui::BulletText(name);
		}
		else if (ImGui::Button(name))
		{
			brush_ = BrushType::Tile;
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

	float num = 1;
	ImGui::InputFloat("float: ", &num);

	for (int i = 0; i < entities_.size(); ++i)
	{
		const char* name = entities_[i].name.c_str();
		if (i == selectedObject_ && brush_ == BrushType::Entity)
		{
			ImGui::BulletText(name);
		}
		else if (ImGui::Button(name))
		{
			brush_ = BrushType::Entity;
			selectedObject_ = i;
			if (entities_[i].properties.valid())
				properties_ = entities_[i].properties();
			else
				properties_ = lua_.create_table();
		}
	}

	ImGui::End();
}

void EditSystem::showPalette()
{
	ImGui::Begin("Palette");

	if (ImGui::Button("select"))
	{
		brush_ = BrushType::Select;
		properties_ = sol::nil;
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
				int dist = (10 - name.length()) * 7;
				if (dist < 5)
					dist = 5;
				ImGui::SameLine(0, dist);

				sol::object value = p.second;
				char id[32]; sprintf_s(id, "##%s", name.c_str());

				if (value.get_type() == sol::type::number)
				{
					float num = value.as<float>();
					int precision = 5;
					if (floor(num) == num)
						precision = 0;
					if (ImGui::InputFloat(id, &num, 0, 0, precision))
					{
						if(precision == 0)
							properties_[name] = (int)num;
						else
							properties_[name] = num;
					}
					
				}
				if (value.get_type() == sol::type::string)
				{
					std::string str = value.as<std::string>();
					char buff[64]; sprintf_s(buff, "%s", str.c_str());
					if (ImGui::InputText(id, buff, 64))
					{
						properties_[name] = buff;
					}
				}
				if (value.get_type() == sol::type::boolean)
				{
					bool boolean = value.as<bool>();
					if (ImGui::Checkbox(id, &boolean))
					{
						properties_[name] = boolean;
					}
				}

			}
		}
	}
	catch (sol::error e) {
		std::cout << "Error showing properties! " << e.what() << std::endl;
	}

	Vector2i pos = getMousePosition();

	ImGui::Separator();
	ImGui::Text("Tile x:%d, y:%d, %d", pos.x, pos.y, ImGui::IsMouseHoveringAnyWindow());

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



