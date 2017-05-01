#pragma once

#include "GameObject.h"
#include "Animation.h"



class World;

namespace Direction
{
	enum X { Left = -1, ZeroX = 0, Right = 1 };
	enum Y { Up = -1, ZeroY = 0, Down = 1 };
}



class Entity : public GameObject
{
public:
	//enum Type { Pacman, Ghost, SlowGhost, TypeCount };


	Entity(World* world, sol::table& data);

	virtual void update();// override;


	void setSpeed(Direction::X x, Direction::Y y);
	sf::Vector2i getSpeed();

	void setDefaultSpeed(int speed);
	int getDefaultSpeed();

	sf::Vector2i getNextMove();
	void setNextMove(sf::Vector2i nextMove);

	sf::Vector2i getNextPosition();


	int getHitpoints();
	void setHitpoints(int hitpoints);

	bool isVulnerable();
	void setVulnerability(bool isVulnerable, int frames = -1);

	bool isReadyToMove();

	void teleport(sf::Vector2i location);

	~Entity();

private:
	//Type type_;

	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;
	unsigned visionRange_;
	int hitpoints_;
	bool isVulnerable_;

	unsigned long long vulnerbailityTimer_;
	//AnimationPlayer animations_;

	bool teleported_;
	
};

