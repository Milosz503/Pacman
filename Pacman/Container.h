#pragma once


#include "Item.h"
#include <vector>
#include "SoundPlayer.h"

namespace GUI 
{


class Container : public Item
{
public:
	Container(SoundPlayer* sounds);
	~Container();

	void addItem(Item* item);
	void setSpacing(int spacing);
	void removeItems();
	

	void setSelectedItem(int selectedItem);
	int getSelectedItem();


	virtual void draw(ConsoleWindow* console) override;

protected:
	virtual void onEvent(sf::Event event) override;
	virtual void onPositionChange() override;
	virtual void onSizeChange() override;

private:
	SoundPlayer * sounds_;
	std::vector<Item*> items_;
	int focusedItem_;
	int spacing_;

	void focusUp();
	void focusDown();
	void changeFocus(int newFocus);
};

}

