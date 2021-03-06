#pragma once

#include <memory>

#include "ConsoleWindow.h"
#include "TextureManager.h"
#include "PlayerController.h"
#include "MusicPlayer.h"
#include "SoundPlayer.h"

class StateStack;
class ConsoleWindow;
class TextureManager;

namespace States
{
	enum ID {
		None,
		Menu,
		LevelChoiceGame,
		LevelChoiceEditor,
		Settings,
		Editor,
		Game,
		Pause,
		EndGame
	};
}

class State
{
public:

	typedef std::unique_ptr<State> Ptr;

	struct Context
	{
		Context(ConsoleWindow* console, TextureManager* textureManager, MusicPlayer* music, SoundPlayer* sounds);

		ConsoleWindow* console;
		TextureManager* textureManager;
		MusicPlayer* music;
		SoundPlayer* sounds;
		std::string* levelName;
		std::string* endGameContent;
		int* score;
		CharacterColor::Color* endGameColor;
		//Level* level;
	};


	virtual bool update(sf::Time dt) = 0;
	virtual bool handleEvent(sf::Event event) = 0;
	virtual void draw() = 0;


	State(StateStack& stack, Context context);
	~State();

protected:

	void requestStackPush(States::ID stateID);
	void requestStackPop();

	void requestStackClear();

	Context getContext() const;


private:

	StateStack* stack_;
	Context context_;

};

