#pragma once

#include <string>

class GameObject;

class LuaObjectHandle
{
public:
	LuaObjectHandle(GameObject* object);

	int getX() const;
	int getY() const;

	std::string getName() const;
	std::string getType() const;

	GameObject* getObject();

	void setPosition(int x, int y);

	void setColor(int color);
	void setTexture(int x, int y);

	




	~LuaObjectHandle();

private:
	GameObject* object_;
};

