#pragma once

#include <list>
#include <map>
#include <String>
#include <SFML/Audio.hpp>

enum class SoundID {MenuSelect, MenuMove, PageChanged, PickedPoint, GameOver, GameWon};

class SoundPlayer
{
public:
	SoundPlayer();
	~SoundPlayer();

	void play(SoundID effect);
	void removeStoppedSounds();


private:

	std::map<SoundID, sf::SoundBuffer> buffers_;
	std::list<sf::Sound> sounds_;

	void loadSound(SoundID id, std::string file);
};

