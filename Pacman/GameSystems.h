#pragma once

#include "FrameSystem.h"
#include "TextureManager.h"
#include "ConsoleWindow.h"
#include "Physics.h"
#include "EntityController.h"
#include "PlayerController.h"
#include "Scene.h"

class FrameSystem;
class TextureManager;
class ConsoleWindow;
class Physics;
class EntityController;
class PlayerController;
class Scene;


struct GameSystems
{
	FrameSystem* frameSystem;
	TextureManager* textureManager;
	ConsoleWindow* console;
	Physics* physics;
	EntityController* entityControoler;
	PlayerController* playerController;
	Scene* scene;

	

};