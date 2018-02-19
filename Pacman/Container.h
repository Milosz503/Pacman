#pragma once


#include "Item.h"
#include <vector>

namespace GUI 
{


class Container : public Item
{
public:
	Container();
	~Container();

	void addItem(Item* item);

	virtual void draw(ConsoleWindow* console) override;

protected:
	virtual void onEvent(sf::Event event) override;
	virtual void onPositionChange() override;

private:
	std::vector<Item*> items_;
	int focusedItem_;

	void focusUp();
	void focusDown();
};

}

