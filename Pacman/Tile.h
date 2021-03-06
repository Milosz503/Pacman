#pragma once
#include <memory>

#include "GameObject.h"



class World;

class Tile : public GameObject
{
public:
	//enum Type {None, Wall, Point, Border, Teleport, TypeCount };

	Tile(World* world, sol::table& data);
	~Tile();

	virtual void update() override;

	bool isPhysical();
	void setPhysical(bool physical);



	virtual void markToRemove() override;
	void addedToRemove();


private:
	bool isPhysical_;
	bool isAddedToRemove_;
};

