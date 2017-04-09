#pragma once

#include <map>
#include "TextureManager.h"
#include "ConsoleTypes.h"


class Animation
{
public:
	enum ID { Vulnerable, Invulnerable, Colliding };

	Animation(unsigned frameTime = 0);
	Animation(TextureCharacter& texture);



	std::vector<TextureCharacter> frames;
	unsigned frameTime;
};

class AnimationPlayer
{
public:
	
	AnimationPlayer(ConsoleCharacter* sprite);
	AnimationPlayer(ConsoleCharacter* sprite, std::map<Animation::ID, Animation> animations);

	void add(Animation::ID id, Animation animation);
	void play(Animation::ID animation);

	void update(unsigned long long frameNumber);

	~AnimationPlayer();

private:
	ConsoleCharacter* sprite_;

	std::map<Animation::ID, Animation> animations_;
	Animation::ID actualAnimation_;
	unsigned actualFrame_;

	unsigned long long frameChangeTime_;

	

	
};

