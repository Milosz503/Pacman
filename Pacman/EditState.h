#pragma once
#include "State.h"

//Do zmiany


struct ObjectIcon
{
	ObjectIcon(std::string name, TextureCharacter texture) : name(name), texture(texture) {}
	std::string name;
	TextureCharacter texture;
	
};
struct Spawn
{
	Spawn(int e, sf::Vector2i p, sol::table data) : entity(e), position(p), objectData(data) {};
	int entity;
	sf::Vector2i position;
	sol::table objectData;
};

struct Brush
{
	enum Type {Tile, Entity, SelectEntity};

	Brush(Type type, int value) : type(type), value(value) {}

	Type type;
	int value;
	int selectedEntity = -1;
};

class EditState : public State
{
public:
	EditState(StateStack& stack, Context context);
	~EditState();

	virtual bool update(sf::Time dt);
	virtual bool handleEvent(sf::Event event);
	virtual void draw();


private:
	sol::state lua_;

	TextureManager* textureManager_;
	ConsoleWindow* console_;
	//Level* level_;
	std::string levelFile_;


	sol::table objectData_;
	Brush brush_;

	int width_;
	int height_;

	std::vector<std::vector<int>> level_;
	std::vector<Spawn> spawns_;
	

	std::vector<ObjectIcon> tiles_;
	std::vector<ObjectIcon> entities_;

	int getEntity(std::string name);
	int getTile(std::string name);


	void palette();
	bool objectButton(ObjectIcon object, bool isSelected = false);

	void objectConfiguration();

	void drawLevel();
	


	void loadObjects();
	void loadLevel();
	void saveLevel();
};

