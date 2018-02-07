#pragma once

#include "System.h"
#include <SFML/Graphics.hpp>

class Scene;

enum class BrushType {Tile, Entity, Select};

struct ObjectPrefab
{
	std::string name;
	sol::function properties;
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

	BrushType brush_;

	unsigned selectedObject_;
	sol::table properties_;

	std::vector<ObjectPrefab> tiles_;
	std::vector<ObjectPrefab> entities_;


	void updateTileBrush();
	virtual void onEvent(SystemEvent* event) override;

	sf::Vector2i getMousePosition();
	bool isInside(sf::Vector2i pos);

	void tilePalette();
	void entitiyPalette();
	void showPalette();
	void showProperties();

	void loadPrefabs();
};

