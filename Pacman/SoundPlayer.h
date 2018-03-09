#pragma once

#include <list>
#include <map>
#include <String>
#include <SFML/Audio.hpp>

enum class SoundID {MenuSelect, MenuMove, PageChanged, PickedPoint, Powerup, GhostEaten, LostLive, GameOver, GameWon};

class SoundPlayer
{
public:
	SoundPlayer();
	~SoundPlayer();

	void play(SoundID effect);
	void removeStoppedSounds();

	void setVolume(float volume);
	float getVolume();


private:

	std::map<SoundID, sf::SoundBuffer> buffers_;
	std::list<sf::Sound> sounds_;
	float volume_;

	void loadSound(SoundID id, std::string file);
};

