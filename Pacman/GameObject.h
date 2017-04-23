#pragma once

#include "ConsoleTypes.h"
#include "Animation.h"

class Stage;
class World;

class GameObject : public ConsoleCharacter
{
public:
	GameObject(World* world);

	virtual bool isToRemove();
	virtual void markToRemove();

	virtual void update() = 0;

	~GameObject();

protected:
	World* getWorld();

private:
	World* world_;
	bool isToRemove_;

	
};

