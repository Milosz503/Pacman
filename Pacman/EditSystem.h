#pragma once

#include "System.h"
#include <SFML/Graphics.hpp>

class Scene;


struct ObjectPrefab
{
	std::string name;
	sol::function properties;
};

struct Brush
{
	enum Type { Tile, Entity, Select };

	unsigned index;
	GameObject* selectedObject;
	Type type;
	sol::table properties;

};

class EditSystem : public System
{
public:
	EditSystem(SystemManager* systemManager, World* world);

	virtual void update() override;

	virtual void draw() override;


	~EditSystem();

private:

	Scene* scene_;
	sol::state& lua_;

	Brush brush_;


	std::vector<ObjectPrefab> tiles_;
	std::vector<ObjectPrefab> entities_;


	void updateTileBrush();
	virtual void onEvent(SystemEvent* event) override;

	sf::Vector2i getSelectedTile();
	sf::Vector2i getMousePosition();
	bool isInside(sf::Vector2i pos);

	
	void showPalette();
	void tilePalette();
	void entityPalette();
	void showProperties();

	void loadPrefabs();

	void selectObject();
	void selectTilePrefab(int index);
	void selectEntityPrefab(int index);

	sf::Vector2f realPosition(sf::Vector2i tilePosition);
};

