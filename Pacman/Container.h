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
	void setSpacing(int spacing);
	void removeItems();

	virtual void draw(ConsoleWindow* console) override;

protected:
	virtual void onEvent(sf::Event event) override;
	virtual void onPositionChange() override;
	virtual void onSizeChange() override;

private:
	std::vector<Item*> items_;
	int focusedItem_;
	int spacing_;

	void focusUp();
	void focusDown();
};

}

