#pragma once

#include <string>
#include "sol.hpp"

class GameObject;

class LuaObjectHandle
{
public:
	LuaObjectHandle(GameObject* object);

	int getX() const;
	int getY() const;

	std::string getName() const;
	std::string getType() const;
	std::string getCategory() const;
	

	void setPosition(int x, int y);

	void setColor(int color);
	void setTexture(int x, int y);

	void setSpeed(int x, int y);
	void setDefaultSpeed(int speed);
	int getDefaultSpeed();

	int getHp();
	void heal(unsigned hp);
	void damage(unsigned dmg);

	void guideTo(LuaObjectHandle& destination);
	LuaObjectHandle* getDestination();
	bool isGuided();


	void remove();

	sol::table& getVars();



	GameObject* getObject() const;

	~LuaObjectHandle();

private:
	sol::table vars_;
	GameObject* object_;
};

