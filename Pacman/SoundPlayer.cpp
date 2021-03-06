#include "SoundPlayer.h"



SoundPlayer::SoundPlayer() :
	volume_(100)
{
	loadSound(SoundID::MenuSelect, "data/sounds/menu_select.wav");
	loadSound(SoundID::MenuMove, "data/sounds/menu_move.wav");
	loadSound(SoundID::PageChanged, "data/sounds/page_changed.wav");
	loadSound(SoundID::PickedPoint, "data/sounds/picked_point.wav");
	loadSound(SoundID::Powerup, "data/sounds/powerup.wav");
	loadSound(SoundID::GhostEaten, "data/sounds/ghost_eaten.wav");
	loadSound(SoundID::LostLive, "data/sounds/lost_live.wav");
	loadSound(SoundID::GameOver, "data/sounds/game_over.wav");
	loadSound(SoundID::GameWon, "data/sounds/game_won.wav");
}


SoundPlayer::~SoundPlayer()
{
}

void SoundPlayer::play(SoundID effect)
{
	sounds_.push_back(sf::Sound(buffers_[effect]));
	sounds_.back().setVolume(volume_);
	sounds_.back().play();
}

void SoundPlayer::removeStoppedSounds()
{
	sounds_.remove_if([](const sf::Sound& sound) 
	{
		return sound.getStatus() == sf::Sound::Stopped; 
	});
}

void SoundPlayer::setVolume(float volume)
{
	volume_ = volume;
}

float SoundPlayer::getVolume()
{
	return volume_;
}

void SoundPlayer::loadSound(SoundID id, std::string file)
{
	sf::SoundBuffer& buffer = buffers_[id];

	if (!buffer.loadFromFile(file))
	{
		throw std::runtime_error("Sound effect " + file + " could not be loaded");
	}

}
