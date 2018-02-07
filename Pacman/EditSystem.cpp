#include "EditSystem.h"
#include "World.h"
#include "imgui.h"
#include "imgui-SFML.h"
#include <algorithm>

using namespace sf;

EditSystem::EditSystem(SystemManager * systemManager, World * world) :
	System(systemManager, world),
	lua_(world->getLuaManager().getLua()),
	brush_()
{
	brush_.properties = lua_.create_table();
	scene_ = getWorld()->getScene();

	loadPrefabs();
}

void EditSystem::update()
{

	

}

void EditSystem::draw()
{
	//ImGui::ShowTestWindow();

	showProperties();
	showPalette();

	updateTileBrush();

	Vector2i pos = getSelectedTile();
	int fontSize = getWorld()->getConsole()->getFontSize();

	if (isInside(pos) && !ImGui::IsMouseHoveringAnyWindow())
	{
		
		sf::RectangleShape rect(Vector2f(fontSize, fontSize));
		rect.setFillColor(Color(128, 200, 255, 128));
		rect.setOutlineColor(Color(128, 128, 128));
		rect.setOutlineThickness(2);
		
		rect.setPosition(realPosition(pos));

		
		getWorld()->getConsole()->drawsf(rect);

	}

	if (brush_.type == Brush::Select && brush_.selectedObject != nullptr)
	{
		sf::RectangleShape rect(Vector2f(fontSize, fontSize));
		rect.setFillColor(Color(128, 200, 255, 0));
		rect.setOutlineColor(Color(255, 255, 128));
		rect.setOutlineThickness(2);

		rect.setPosition(realPosition(brush_.selectedObject->getPosition()));


		getWorld()->getConsole()->drawsf(rect);
	}
}

EditSystem::~EditSystem()
{
}

void EditSystem::updateTileBrush()
{
	if (ImGui::IsMouseHoveringAnyWindow())
		return;
	sf::Vector2i pos = getSelectedTile();

	if (Mouse::isButtonPressed(Mouse::Left))
	{
		if (brush_.type == Brush::Tile && brush_.index < tiles_.size() && isInside(pos))
		{

			try {
				lua_["Game"]["createTile"](tiles_[brush_.index].name, brush_.properties, pos.x, pos.y);
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
			sf::Vector2i pos = getSelectedTile();

			if (brush_.type == Brush::Entity && brush_.index < entities_.size() && isInside(pos))
			{
				

				try {
					sol::table self = lua_["Game"]["createEntity"](entities_[brush_.index].name, brush_.properties);
					LuaObjectHandle& handle = self["handle"];
					//std::cout << "Pos: " << pos.x << " " << pos.y << std::endl;
					handle.setPosition(pos.x, pos.y);
				}
				catch (sol::error e) {
					std::cout << "Error creating tile! " << e.what() << std::endl;
				}
			}
			else if (brush_.type == Brush::Select)
			{
				selectObject();
			}
		}
	}

	if (e->type == SystemEvent::onRemove)
	{
		OnRemoveEvent* event = static_cast<OnRemoveEvent*>(e);

		if (event->object == brush_.selectedObject)
		{
			brush_.selectedObject = nullptr;
			brush_.properties = sol::nil;
		}
	}
}

sf::Vector2i EditSystem::getSelectedTile()
{
	int fontSize = getWorld()->getConsole()->getFontSize();

	sf::Vector2i offset(2, 4); // do zmiany!

	Vector2i pos = sf::Mouse::getPosition(*getWorld()->getConsole()->getWindow());

	pos.x = pos.x / fontSize - offset.x;
	pos.y = pos.y / fontSize - offset.y;

	return pos;
}

sf::Vector2i EditSystem::getMousePosition()
{
	return sf::Mouse::getPosition(*getWorld()->getConsole()->getWindow());
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



void EditSystem::showPalette()
{
	ImGuiWindowFlags window_flags = 0;
	window_flags |= ImGuiWindowFlags_MenuBar;
	ImGui::Begin("Palette", NULL, window_flags);

	bool openResize = false;
	if (ImGui::BeginMenuBar())
	{

		if (ImGui::BeginMenu("Edit"))
		{
			openResize = ImGui::MenuItem("Resize");
				
			ImGui::EndMenu();
		}

		ImGui::EndMenuBar();
	}

	static int width = scene_->getWidth();
	static int height = scene_->getHeight();

	if (openResize)
	{
		width = scene_->getWidth();
		height = scene_->getHeight();
		ImGui::OpenPopup("Resize");
	}

	if (ImGui::BeginPopupModal("Resize"))
	{
		
		ImGui::InputInt("width", &width, 0);
		ImGui::InputInt("Height", &height, 0);

		if (ImGui::Button("Resize"))
		{
			scene_->setSize(width, height);
			ImGui::CloseCurrentPopup();
		}
		ImGui::SameLine();
		if (ImGui::Button("Cancel"))
		{
			ImGui::CloseCurrentPopup();
		}

		ImGui::EndPopup();

	}

	if (brush_.type == Brush::Select)
	{
		ImGui::Bullet();
	}

	if (ImGui::Button("select"))
	{
		brush_.type = Brush::Select;
		brush_.properties = sol::nil;
	}

	ImGui::Separator();
	entityPalette();
	ImGui::Separator();
	tilePalette();


	ImGui::End();
}
void EditSystem::tilePalette()
{
	ImGui::Text("Tiles:");
	ImGui::Spacing();

	for (int i = 0; i < tiles_.size(); ++i)
	{
		const char* name = tiles_[i].name.c_str();
		if (i == brush_.index && brush_.type == Brush::Tile)
		{
			ImGui::Bullet();
		}

		if (ImGui::Button(name))
		{
			selectTilePrefab(i);
		}
	}

}

void EditSystem::entityPalette()
{
	ImGui::Text("Entities:");
	ImGui::Spacing();


	for (int i = 0; i < entities_.size(); ++i)
	{
		const char* name = entities_[i].name.c_str();
		if (i == brush_.index && brush_.type == Brush::Entity)
		{
			ImGui::Bullet();
		}

		if (ImGui::Button(name))
		{
			selectEntityPrefab(i);
		}
	}

}

void EditSystem::showProperties()
{
	ImGui::Begin("Properties");

	if (brush_.type == Brush::Select && brush_.selectedObject)
	{
		ImGui::Text(brush_.selectedObject->getName().c_str());
	}
	else if (brush_.type != Brush::Select && brush_.prefab)
	{
		ImGui::Text(brush_.prefab->name.c_str());
	}
	ImGui::Separator();

	if (brush_.type == Brush::Select && brush_.selectedObject)
	{
		GameObject* object = brush_.selectedObject;
		if (object->getType() == GameObject::Entity)
		{
			int x = object->getX();
			int y = object->getY();

			bool changedX = ImGui::InputInt("x: ", &x);
			bool changedY = ImGui::InputInt("y: ", &y);
			if (changedX || changedY)
			{
				object->setPosition(x, y);
			}
			ImGui::Separator();
		}
	}

	std::vector<std::string> keys;

	try {

		if (brush_.properties.valid()) {
			for (auto& p : brush_.properties)
			{

				std::string name = p.first.as<std::string>();
				keys.push_back(name);
			}
			std::sort(keys.begin(), keys.end());
			for (int i = 0; i < keys.size(); ++i)
			{
				std::string name = keys[i];

				ImGui::Text(name.c_str());
				int dist = (10 - name.length()) * 7;
				if (dist < 5)
					dist = 5;
				ImGui::SameLine(0, dist);

				sol::object value = brush_.properties[name];
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
							brush_.properties[name] = (int)num;
						else
							brush_.properties[name] = num;
					}
					
				}
				if (value.get_type() == sol::type::string)
				{
					std::string str = value.as<std::string>();
					char buff[64]; sprintf_s(buff, "%s", str.c_str());
					if (ImGui::InputText(id, buff, 64))
					{
						brush_.properties[name] = buff;
					}
				}
				if (value.get_type() == sol::type::boolean)
				{
					bool boolean = value.as<bool>();
					if (ImGui::Checkbox(id, &boolean))
					{
						brush_.properties[name] = boolean;
					}
				}

			}
		}
	}
	catch (sol::error e) {
		std::cout << "Error showing properties! " << e.what() << std::endl;
	}

	Vector2i pos = getSelectedTile();

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

	std::sort(tiles_.begin(), tiles_.end());
	std::sort(entities_.begin(), entities_.end());


}

void EditSystem::selectObject()
{
	brush_.type = Brush::Select;

	Vector2i pos = getSelectedTile();

	Entity* entity = scene_->findEntity(pos.x, pos.y);
	if (entity != nullptr)
	{
		brush_.selectedObject = entity;

		try {
			brush_.properties = entity->getLuaInstance()["properties"];
		}
		catch (sol::error e) {
			std::cout << "Error selecting entity! " << e.what() << std::endl;
		}

		return;
	}

	Tile* tile = scene_->getTile(pos.x, pos.y);

	if (tile != nullptr)
	{
		brush_.selectedObject = tile;

		try {
			brush_.properties = tile->getLuaInstance()["properties"];
		}
		catch (sol::error e) {
			std::cout << "Error selecting tile! " << e.what() << std::endl;
		}

	}
}

void EditSystem::selectTilePrefab(int index)
{
	brush_.type = Brush::Tile;
	brush_.index = index;
	brush_.prefab = &tiles_[index];
	if (tiles_[index].properties.valid())
		brush_.properties = tiles_[index].properties();
	else
		brush_.properties = lua_.create_table();
}

void EditSystem::selectEntityPrefab(int index)
{
	brush_.type = Brush::Entity;
	brush_.index = index;
	brush_.prefab = &entities_[index];
	if (entities_[index].properties.valid())
		brush_.properties = entities_[index].properties();
	else
		brush_.properties = lua_.create_table();
}

sf::Vector2f EditSystem::realPosition(sf::Vector2i tilePosition)
{
	Vector2i offset(2, 4); // DO ZMIANY!
	int fontSize = getWorld()->getConsole()->getFontSize();

	tilePosition += offset;

	tilePosition *= fontSize;

	return Vector2f(tilePosition.x, tilePosition.y);
}

