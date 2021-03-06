#pragma once

#include <vector>
#include <queue>
#include <map>
#include <functional>

#include "State.h"


class State;


class StateStack : private sf::NonCopyable
{
public:

	enum Action{Push, Pop, Clear};


	explicit StateStack(State::Context context);

	template<typename T, typename... Args>
	void registerState(States::ID stateID, Args... args);


	void update(sf::Time dt);
	void handleEvent(sf::Event event);

	void draw();


	void pushState(States::ID stateID);
	void popState();
	void clearStates();

	bool isEmpty() const;



	~StateStack();


private:

	struct PendingChange{
		explicit PendingChange(Action action, States::ID stateID = States::None);

		Action action;
		States::ID stateID;
	};


	State::Ptr createState(States::ID stateID);
	void applyPendingChanges();
	


	std::vector<State::Ptr> stack_;

	std::queue<PendingChange> pendingChanges_;
	std::map<States::ID, std::function<State::Ptr()>> factories_;

	State::Context context_;


};

template<typename T, typename... Args>
inline void StateStack::registerState(States::ID stateID, Args... args)
{
	factories_[stateID] = [&, args...]()
	{
		return State::Ptr(new T(*this, context_, args...));
	};
}

