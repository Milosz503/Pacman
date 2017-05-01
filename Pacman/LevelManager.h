#pragma once

#include "Tile.h"
#include <vector>
#include <string>
#include <iostream>
#include <fstream>
#include <SFML\Graphics.hpp>

class EntityManager;
class Scene;


class LevelManager
{
public:
	LevelManager();




	static void loadLevel(Scene* scene, EntityManager* entityManager, std::string fileName);
	static void saveLevel(Scene* scene, std::string fileName);

	~LevelManager();


private:



};

