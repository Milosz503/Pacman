#pragma once

#include <memory>

#include "ConsoleTypes.h"
#include "Animation.h"
#include "LuaObjectHandle.h"

#include "sol.hpp"

class Stage;
class World;



class GameObject : public ConsoleCharacter
{
public:
	enum Type {Tile, Entity};

	GameObject(const GameObject& obj);
	GameObject(World* world, Type type, sol::table& data);

	void init(sol::table& properties);

	virtual bool isToRemove();
	virtual void markToRemove();

	virtual void update();

	void setName(std::string name);
	std::string getName();

	void setCategory(std::string category);
	std::string getCategory();

	Type getType();

	void setHp(int hp);
	int getHp() const;

	

	void collide(GameObject* collidingObject);
	LuaObjectHandle& getHandle();

	World* getWorld();

	~GameObject();

protected:
	
	
	

private:
	World* world_;
	bool isToRemove_;

	LuaObjectHandle luaHandle_;
	std::shared_ptr<sol::protected_function> initFunction_;
	std::shared_ptr<sol::protected_function> collisionFunction_;
	std::shared_ptr<sol::protected_function> updateFunction_;

	std::string name_;
	Type type_;
	std::string category_;
	
	int hp_;


	void setLuaFunctions(sol::table data);

	bool callFunction(std::shared_ptr<sol::protected_function>& func, std::string name);

	
	
};

