#include "HighScoreManager.h"
#include <iostream>
#include <fstream>

int HighScoreManager::getHighScore(std::string levelName)
{
	std::ifstream file;
	file.open("saves/" + levelName + ".save");

	if (file.is_open())
	{
		int highScore = 0;

		file >> highScore;
		file.close();
		
		return highScore;
	}

	return 0;
}

void HighScoreManager::setHighScore(std::string levelName, int highScore)
{
	
	std::ofstream file;
	file.open("saves/" + levelName + ".save");

	if (file.is_open())
	{
		file << highScore;
		file.close();
	}
	else
	{
		std::cout << "Error: Saving high score failed\n";
	}

}
