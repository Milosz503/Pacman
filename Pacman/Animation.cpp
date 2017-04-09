#include "Animation.h"

#include <iostream>


AnimationPlayer::~AnimationPlayer()
{
}

Animation::Animation(unsigned frameTime) :
	frameTime(frameTime)
{
}

Animation::Animation(TextureCharacter & texture) :
	frameTime(0)
{
	frames.push_back(texture);
}






AnimationPlayer::AnimationPlayer(ConsoleCharacter * sprite) :
	sprite_(sprite),
	actualAnimation_(Animation::Vulnerable),
	actualFrame_(0)
{
}

AnimationPlayer::AnimationPlayer(ConsoleCharacter * sprite, std::map<Animation::ID, Animation> animations) :
	sprite_(sprite),
	animations_(animations),
	actualFrame_(0)
	
{
	actualAnimation_ = animations_.begin()->first;
}

void AnimationPlayer::add(Animation::ID id, Animation animation)
{
	if (animations_.size() == 0)
		actualAnimation_ = id;

	animations_[id] = animation;
}



void AnimationPlayer::play(Animation::ID animation)
{
	auto found = animations_.find(animation);

	if (found != animations_.end() && found->second.frames.size() != 0)
	{
		actualAnimation_ = animation;
	}
	else
	{
		std::cout << "ANIMATION NOT FOUND OR 0 FRAMES!" << std::endl;
	}
}

void AnimationPlayer::update(unsigned long long frameNumber)
{
	if (frameNumber == frameChangeTime_)
	{
		frameChangeTime_ = frameNumber + animations_[actualAnimation_].frameTime;

		actualFrame_++;

		if (actualFrame_ >= animations_[actualAnimation_].frames.size())
		{
			actualFrame_ = 0;
		}

		
	}
	if (animations_[actualAnimation_].frames.size() > 0)
	{
		sprite_->setTexture(animations_[actualAnimation_].frames[actualFrame_]);
	}
}



