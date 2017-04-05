#pragma once

#include <SFML\Graphics.hpp>


class World
{
public:
	World();

	bool update(sf::Time dt);
	bool handleEvent(sf::Event event);
	void draw();

	~World();
};

