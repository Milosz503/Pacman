#pragma once

#include <string>
#include <map>
#include <SFML/Audio.hpp>

enum class MusicID {MenuTheme, GameTheme};

class MusicPlayer : private sf::NonCopyable
{
public:
	MusicPlayer();
	~MusicPlayer();

	void play(MusicID theme);
	void stop();

	void setVolume(float volume);
	float getVolume();

private:
	sf::Music music_;
	std::map<MusicID, std::string> fileNames_;
	float volume_;
};

