#pragma once

#include "GameObject.h"

class Entity
{
public:
	enum Type { Pacman, Ghost, TypeCount };


	Entity(Stage* stage, Type type);

	virtual void update(sf::Time dt);

	void setSpeed(int x, int y);
	sf::Vector2i getSpeed();

	~Entity();

private:
	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;
	unsigned visionRange_;
};

