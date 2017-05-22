#pragma once
#include "State.h"


struct ObjectIcon
{
	ObjectIcon(std::string name, TextureCharacter texture) : name(name), texture(texture) {}
	std::string name;
	TextureCharacter texture;
	
};
struct Spawn
{
	Spawn(int e, sf::Vector2i p) : entity(e), position(p) {};
	int entity;
	sf::Vector2i position;
};

struct Brush
{
	enum Type {Tile, Entity};

	Brush(Type type, int value) : type(type), value(value) {}

	Type type;
	int value;
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

	TextureManager* textureManager_;
	ConsoleWindow* console_;
	//Level* level_;
	std::string levelFile_;

	Brush brush_;

	int width_;
	int height_;

	std::vector<std::vector<int>> level_;
	std::vector<Spawn> spawns_;
	

	std::vector<ObjectIcon> tiles_;
	std::vector<ObjectIcon> entities_;

	int getEntity(std::string name);
	int getTile(std::string name);


	void drawMenu();
	bool drawObjectOption(ObjectIcon object, int key, bool isSelected = false);

	void drawLevel();
	


	void loadObjects();
	void loadLevel();
	void saveLevel();
};

