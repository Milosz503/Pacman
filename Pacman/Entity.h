#pragma once

#include "GameObject.h"
#include "Animation.h"
#include <memory>
#include <list>



class World;

namespace Direction
{
	enum X { Left = -1, ZeroX = 0, Right = 1 };
	enum Y { Up = -1, ZeroY = 0, Down = 1 };
}

enum class GuideType {None, PathToPlayer, PathToTile, DirectionToTile};



class Entity : public GameObject
{
public:
	//enum Type { Pacman, Ghost, SlowGhost, TypeCount };


	Entity(World* world, sol::table& data);

	virtual void update();// override;

	virtual void draw(ConsoleWindow& console) override;

	//physics
	void setSpeed(Direction::X x, Direction::Y y);
	sf::Vector2i getSpeed();

	//EntityController
	void setPath(std::list<sf::Vector2i>& path, sf::Vector2i pathDestination);
	bool isPathEmpty();
	int getPathSize();
	std::list<sf::Vector2i>& getPath();
	sf::Vector2i getPathDestination();
	
	bool isGuided();
	void stopGuide();

	sf::Vector2i getDestination();
	GuideType getGuideType();

	int getPlayerFrontCost();
	int getPlayerBackCost();

	void guideToPlayer(int frontCost, int backCost);
	void guideToPath(int x, int y);
	void guideToDirection(int x, int y);




	void setDefaultSpeed(int speed);
	int getDefaultSpeed();

	sf::Vector2i getNextMove();
	void setNextMove(sf::Vector2i nextMove);

	sf::Vector2i getNextPosition();




	bool isReadyToMove();


	~Entity();

private:

	//physics
	sf::Vector2i speed_;
	sf::Vector2i nextMove_;
	unsigned defaultSpeed_;

	//EntityController
	std::list<sf::Vector2i> path_;
	sf::Vector2i pathDestination_;
	GuideType guideType_;
	sf::Vector2i destination_;
	int playerFrontCost_;
	int playerBackCost_;

public:
	int priority;
	int framesSinceLastUpdate;
	bool canMoveBack;
};

