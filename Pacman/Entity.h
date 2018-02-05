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



class Entity : public GameObject
{
public:
	//enum Type { Pacman, Ghost, SlowGhost, TypeCount };


	Entity(World* world, sol::table& data);

	virtual void update();// override;

	virtual void draw() override;


	void setSpeed(Direction::X x, Direction::Y y);
	sf::Vector2i getSpeed();

	void setPath(std::list<sf::Vector2i>& path, sf::Vector2i pathDestination);
	bool isPathEmpty();
	int getPathSize();
	sf::Vector2i getPathDestination();
	

	bool isGuided();
	void guideTo(GameObject* destination, sol::protected_function customWages);
	void guideTo(sf::Vector2i destination);
	void guideTo(GameObject* destination);
	void stopGuide();
	GameObject* getDestination();

	bool isGoalMoving();
	sf::Vector2i getGoal();
	std::string getGuideType();

	void setGuideType(std::string type);



	std::vector<NodeCost> getWages();

	void setDefaultSpeed(int speed);
	int getDefaultSpeed();

	sf::Vector2i getNextMove();
	void setNextMove(sf::Vector2i nextMove);

	sf::Vector2i getNextPosition();





	bool isReadyToMove();


	~Entity();

private:

	sf::Vector2i nextMove_;
	sf::Vector2i speed_;

	unsigned defaultSpeed_;


	std::list<sf::Vector2i> path_;
	sf::Vector2i pathDestination_;

	sol::protected_function* customWages_;
	std::string guideType_;
	bool isGuided_;
	GameObject* destination_;
	sf::Vector2i destinationPos_;
};

