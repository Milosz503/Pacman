#include "StateStack.h"

#include <iostream>
#include <cassert>


StateStack::StateStack(State::Context context) :
	context_(context)
{
}

StateStack::~StateStack()
{
}

State::Ptr StateStack::createState(States::ID stateID)
{
	auto result = factories_.find(stateID);

	assert(result != factories_.end());

	return result->second();
}

void StateStack::applyPendingChanges()
{

	while (!pendingChanges_.empty())
	{
		PendingChange change = pendingChanges_.front();

		switch (change.action)
		{
		case Push:
			std::cout << "Pushed: " << change.stateID << std::endl;
			stack_.push_back(createState(change.stateID));
			break;

		case Pop:
			stack_.pop_back();
			break;

		case Clear:
			stack_.clear();
			break;

		}

		pendingChanges_.pop();
	}

}



void StateStack::update(sf::Time dt)
{
	applyPendingChanges();

	for (auto itr = stack_.rbegin(); itr != stack_.rend(); ++itr)
	{
		if (!(*itr)->update(dt))
			break;
	}
}

void StateStack::handleEvent(sf::Event event)
{
	for (auto itr = stack_.rbegin(); itr != stack_.rend(); ++itr)
	{
		if (!(*itr)->handleEvent(event))
			break;
	}
}

void StateStack::draw()
{
	for (auto& state : stack_)
	{
		state->draw();
	}
}

void StateStack::pushState(States::ID stateID)
{
	std::cout << "Push: " << stateID << std::endl;
	std::cout << "Size: " << stack_.size() << std::endl;
	pendingChanges_.push(PendingChange(Push, stateID));
}

void StateStack::popState()
{
	pendingChanges_.push(PendingChange(Pop));
}

void StateStack::clearStates()
{
	pendingChanges_.push(PendingChange(Clear));
}

bool StateStack::isEmpty() const
{
	return stack_.empty();
}

StateStack::PendingChange::PendingChange(Action action, States::ID stateID) :
	action(action),
	stateID(stateID)
{
}
