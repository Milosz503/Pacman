#include "Teleport.h"




Teleport::Teleport(GameSystems* systems, int x, int y) :
	Tile(systems, Tile::Teleport, x, y),
	teleportX_(0),
	teleportY_(0)
{
}

void Teleport::setTeleportLocation(int x, int y)
{
	teleportX_ = x;
	teleportY_ = y;
}

sf::Vector2i Teleport::getTeleportLocation()
{
	return sf::Vector2i(teleportX_, teleportY_);
}

Teleport::~Teleport()
{
}
