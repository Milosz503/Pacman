#pragma once
#include "Tile.h"
class Teleport :
	public Tile
{
public:
	Teleport(GameSystems* systems, int x, int y);
	void setTeleportLocation(int x, int y);

	sf::Vector2i getTeleportLocation();

	~Teleport();

private:
	int teleportX_;
	int teleportY_;

};

