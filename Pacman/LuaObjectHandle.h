#pragma once

#include <string>
#include <SFML\Graphics.hpp>

#include "sol.hpp"

class GameObject;


struct NodeCost
{
	NodeCost(int x, int y) : x(x), y(y), cost(0) {};
	int x;
	int y;
	int cost;
};


class LuaObjectHandle
{
public:
	LuaObjectHandle(GameObject* object);

	int getX() const;
	int getY() const;

	std::string getName() const;
	void setName(std::string name);
	std::string getType() const;
	std::string getCategory() const;
	

	void setPosition(int x, int y);

	void setColor(int color);
	void setTexture(int x, int y);

	void setSpeed(int x, int y);
	sf::Vector2i getSpeed();
	void setDefaultSpeed(int speed);
	int getDefaultSpeed();

	void setPhysical(bool isPhysical);



	void guideTo(LuaObjectHandle* destination);
	void guideTo_costs(LuaObjectHandle& destination, sol::protected_function customWages);
	void guideToPos(int x, int y);

	void setGuideType(std::string type);

	LuaObjectHandle* getDestination();
	bool isGuided();


	void remove();

	sol::table& getLuaInstance();



	GameObject* getObject() const;

	~LuaObjectHandle();

private:
	GameObject* object_;
};

