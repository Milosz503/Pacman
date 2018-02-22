#include "MusicPlayer.h"



MusicPlayer::MusicPlayer() :
	music_(),
	volume_(70)
{
	fileNames_[MusicID::MenuTheme] = "data/sounds/menu_theme.ogg";
	fileNames_[MusicID::GameTheme] = "data/sounds/game_theme.ogg";
}


MusicPlayer::~MusicPlayer()
{
}

void MusicPlayer::play(MusicID theme)
{
	std::string fileName = fileNames_[theme];

	if (!music_.openFromFile(fileName))
	{
		throw std::runtime_error("Music " + fileName + " could not be loaded");
	}

	music_.setVolume(volume_);
	music_.setLoop(true);
	music_.play();
}

void MusicPlayer::stop()
{
	music_.stop();
}

void MusicPlayer::setVolume(float volume)
{
	volume_ = volume;

	music_.setVolume(volume);
}
