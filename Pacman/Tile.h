#pragma once

#include "GameObject.h"

class World;

class Tile : public GameObject
{
public:
	enum Type {None, Wall, Point, Border, Teleport, TypeCount };

	Tile(World* world, Type type, int x = 0, int y = 0);
	~Tile();

	virtual void update() override;

	bool isPhysical();
	void setPhysical(bool physical);

	Type getType();


private:
	bool isPhysical_;
	Type type_;
};

