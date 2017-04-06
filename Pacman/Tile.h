#pragma once

#include "GameObject.h"

class Tile : public GameObject
{
public:
	enum Type { Wall, Border, Point, TypeCount };

	Tile(Stage* stage, Type type, int x = 0, int y = 0);
	~Tile();

	virtual void update(sf::Time dt) override;

	bool isPhysical();
	void setPhysical(bool physical);



private:
	bool isPhysical_;
};

