#pragma once

#include <string>

class HighScoreManager
{
public:
	

	static int getHighScore(std::string levelName);
	static void setHighScore(std::string levelName, int highScore);
};

