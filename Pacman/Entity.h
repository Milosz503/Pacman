#pragma once

#include "GameObject.h"



namespace DirectionX
{
	enum Move {Left = -1, Zero = 0, Right = 1};
}
namespace DirectionY
{
	enum Move { Up = -1, Zero = 0, Down = 1};
}

class Entity : public GameObject
{
public:
	enum Type { Pacman, Ghost, TypeCount };


	Entity(Stage* stage, Type type, int x = 0, int y = 0);

	virtual void update(sf::Time dt) override;

	void setSpeed(DirectionX::Move x, DirectionY::Move y);
	sf::Vector2i getSpeed();

	sf::Vector2i getNextMove();
	void getNextMove(sf::Vector2i nextMove);

	~Entity();

private:
	Type type_;

	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;
	unsigned visionRange_;

	
};

