#pragma once

#include "GameObject.h"

class Tile : public GameObject
{
public:
	enum Type {None, Wall, Border, Point, TypeCount };

	Tile(Stage* stage, Type type, int x = 0, int y = 0);
	~Tile();

	virtual void update(sf::Time dt) override;

	bool isPhysical();
	void setPhysical(bool physical);

	Type getType();


private:
	bool isPhysical_;
	Type type_;
};

