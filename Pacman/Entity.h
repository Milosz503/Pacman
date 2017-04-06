#pragma once

#include "GameObject.h"

class GameObject;
class Stage;

class Entity : public GameObject
{
public:
	enum Type { Pacman, Ghost, TypeCount };


	Entity(Stage* stage, Type type, int x = 0, int y = 0);

	virtual void update(sf::Time dt) override;

	void setSpeed(int x, int y);
	sf::Vector2i getSpeed();

	~Entity();

private:
	Type type_;

	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;
	unsigned visionRange_;

	
};

