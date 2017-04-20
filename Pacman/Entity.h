#pragma once

#include "GameObject.h"
#include "Animation.h"



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
	enum Type { Pacman, Ghost, SlowGhost, TypeCount };


	Entity(GameSystems* systems, Type type, int x = 0, int y = 0);

	virtual void update();// override;

	void setSpeed(DirectionX::Move x, DirectionY::Move y);
	sf::Vector2i getSpeed();

	sf::Vector2i getNextMove();
	void setNextMove(sf::Vector2i nextMove);

	sf::Vector2i getNextPosition();

	Type getType();

	int getHitpoints();
	void setHitpoints(int hitpoints);

	bool isVulnerable();
	void setVulnerability(bool isVulnerable, int frames = -1);

	bool isReadyToMove();

	void teleport(sf::Vector2i location);

	~Entity();

private:
	Type type_;

	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;
	unsigned visionRange_;
	int hitpoints_;
	bool isVulnerable_;

	unsigned long long vulnerbailityTimer_;
	AnimationPlayer animations_;

	bool teleported_;
	
};

