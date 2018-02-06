#pragma once

#include "System.h"
#include <SFML/Graphics.hpp>

class Scene;

enum class BrushType {Tile, Entity};

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
	int selectedObject_;
	sol::table properties_;

	std::vector<ObjectPrefab> tiles_;
	std::vector<ObjectPrefab> entities_;


	void updateBrush();

	void tilePalette();
	void entitiyPalette();
	void showProperties();

	void loadPrefabs();
};

