#include "State.h"
#include "StateStack.h"




State::State(StateStack & stack, Context context) :
	stack_(&stack),
	context_(context)
{
}

State::~State()
{
}


void State::requestStackPush(States::ID stateID)
{
	stack_->pushState(stateID);
}

void State::requestStackPop()
{
	stack_->popState();
}

void State::requestStackClear()
{
	stack_->clearStates();
}

State::Context State::getContext() const
{
	return context_;
}

State::Context::Context(ConsoleWindow * console, TextureManager * textureManager,
	MusicPlayer* music, SoundPlayer* sounds) :

	console(console),
	textureManager(textureManager),
	music(music),
	sounds(sounds),
	levelName(new std::string("level")),
	endGameContent(new std::string("Error")),
	score(new int(0)),
	endGameColor(new CharacterColor::Color(CharacterColor::White))
{
}
