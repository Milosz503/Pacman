#include "GameObject.h"


#include <iostream>

GameObject::GameObject(const GameObject & obj) :
	ConsoleCharacter(obj),
	world_(obj.world_),
	isToRemove_(obj.isToRemove_),
	name_(obj.name_),
	type_(obj.type_),
	category_(obj.category_),
	luaHandle_(this),
	initFunction_(obj.initFunction_),
	collisionFunction_(obj.collisionFunction_),
	updateFunction_(obj.updateFunction_)
{
}

GameObject::GameObject(World* world, Type type, sol::table& data) :
	world_(world),
	isToRemove_(false),
	name_(""),
	type_(type),
	category_("none"),
	luaHandle_(this),
	initFunction_(nullptr),
	collisionFunction_(nullptr),
	updateFunction_(nullptr)
{

	int textureY = data["texture"]["y"].get_or(0);
	int color = data["texture"]["color"].get_or(0);
	TextureCharacter textureCharacter;
	textureCharacter.rect.x = data["texture"]["x"].get_or(0);
	textureCharacter.rect.y = color * 16 + textureY;

	std::string category = data["category"].get_or<std::string>("none");

	setTexture(textureCharacter);
	setCategory(category);

	setLuaFunctions(data);
}

void GameObject::init(sol::table & properties)
{
	if (initFunction_ != nullptr)
	{
		std::cout << "calling init: " << name_ << properties["name"].get_or<std::string>("???") << std::endl;
		auto result = (*initFunction_)(luaHandle_, sol::object(properties));

		if (!result.valid())
		{
			sol::error e = result;
			std::cout << "ERROR object " << name_ << " in init function: " << e.what() << std::endl;
		}
	}
}





bool GameObject::isToRemove()
{
	return isToRemove_;
}

void GameObject::markToRemove()
{
	isToRemove_ = true;
}

void GameObject::update()
{
	callFunction(updateFunction_, "update");
}

void GameObject::setName(std::string name)
{
	name_ = name;
}

std::string GameObject::getName()
{
	return name_;
}

void GameObject::setCategory(std::string category)
{
	category_ = category;
}

std::string GameObject::getCategory()
{
	return category_;
}

GameObject::Type GameObject::getType()
{
	return type_;
}

void GameObject::setHp(int hp)
{
	hp_ = hp;
}

int GameObject::getHp() const
{
	return hp_;
}

void GameObject::setLuaFunctions(sol::table data)
{

	sol::optional<sol::protected_function> init = data["init"];
	if (init)
	{
		initFunction_ = std::make_shared<sol::protected_function>(init.value());
	}

	sol::optional<sol::protected_function> update = data["update"];
	if (update)
	{
		updateFunction_ = std::make_shared<sol::protected_function>(update.value());
	}

	sol::optional<sol::protected_function> collide = data["collide"];
	if (collide)
	{
		collisionFunction_ = std::make_shared<sol::protected_function>(collide.value());
	}
}

void GameObject::collide(GameObject * collidingObject)
{
	callFunction(collisionFunction_, "colide");
}

GameObject::~GameObject()
{
}

bool GameObject::callFunction(std::shared_ptr<sol::protected_function>& func, std::string name)
{
	if (func != nullptr)
	{
		auto result = (*func)(luaHandle_);

		if (!result.valid())
		{
			sol::error e = result;
			std::cout << "ERROR entity " << name_ << " in " << name << " function: " << e.what() << std::endl;
		}

	}

	return true;
}

World * GameObject::getWorld()
{
	return world_;
}

LuaObjectHandle&  GameObject::getHandle()
{
	return luaHandle_;
}


