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

	GameObject(World* world, Type type, sol::table luaInstance);


	virtual bool isToRemove();
	virtual void markToRemove();

	virtual void update();

	void setName(std::string name);
	std::string getName();

	void setCategory(std::string category);
	std::string getCategory();

	Type getType();


	
	LuaObjectHandle& getHandle();
	sol::table& getLuaInstance();

	World* getWorld();

	~GameObject();

protected:
	
	
	

private:
	World* world_;
	bool isToRemove_;

	sol::table luaInstance_;
	LuaObjectHandle luaHandle_;


	std::string name_;
	Type type_;
	std::string category_;

	

	
};

