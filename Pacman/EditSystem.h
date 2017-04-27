#pragma once

#include "System.h"
#include <SFML/Graphics.hpp>

class Scene;

class EditSystem : public System
{
public:
	EditSystem(SystemManager* systemManager, World* world);

	virtual void update() override;

	virtual void draw() override;


	~EditSystem();

private:
	sf::RenderWindow* window_;
	Scene* scene_;
	Tile::Type selectedTile;

	sf::Vector2i getSelectedTile();
	bool isInsideScene(sf::Vector2i position);
	void removeTile(sf::Vector2i position);
	void addTile(Tile::Type type, sf::Vector2i position);
};

