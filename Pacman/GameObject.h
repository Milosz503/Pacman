#pragma once

#include <memory>

#include "ConsoleTypes.h"
#include "Animation.h"
#include "LuaObjectHandle.h"

extern "C" {
# include <lua.h>
# include <lauxlib.h>
# include <lualib.h>
}

#include <LuaBridge.h>

class Stage;
class World;



class GameObject : public ConsoleCharacter
{
public:
	enum Type {Tile, Entity};

	GameObject(const GameObject& obj);
	GameObject(World* world, Type type);

	void setLuaData(luabridge::LuaRef luaData);

	virtual bool isToRemove();
	virtual void markToRemove();

	virtual void update();

	void setName(std::string name);
	std::string getName();

	Type getType();

	void setLuaFunctions(luabridge::LuaRef& object);

	void collide(GameObject* collidingObject);
	LuaObjectHandle& getHandle();

	World* getWorld();

	~GameObject();

protected:
	
	
	

private:
	World* world_;
	luabridge::LuaRef* luaData_;
	bool isToRemove_;

	std::string name_;
	Type type_;
	LuaObjectHandle luaHandle_;



	std::shared_ptr<luabridge::LuaRef> collisionFunction_;
	std::shared_ptr<luabridge::LuaRef> updateFunction_;
	
	
};

