#pragma once

#include "GameObject.h"

class Tile : public GameObject
{
public:
	enum Type {None, Wall, Border, Point, Teleport, TypeCount };

	Tile(GameSystems* systems, Type type, int x = 0, int y = 0);
	~Tile();

	virtual void update(unsigned long frameNumber) override;

	bool isPhysical();
	void setPhysical(bool physical);

	Type getType();


private:
	bool isPhysical_;
	Type type_;
};

