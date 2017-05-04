#pragma once
#include "State.h"


struct ObjectIcon
{
	ObjectIcon(std::string name, TextureCharacter texture) : name(name), texture(texture) {}
	std::string name;
	TextureCharacter texture;
	
};
struct SpawnPoint
{
	SpawnPoint(int e, sf::Vector2i p) : entity(e), position(p) {};
	int entity;
	sf::Vector2i position;
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

	int selectedTile_;

	int width_;
	int height_;

	std::vector<std::vector<int>> level_;
	std::vector<SpawnPoint> spawns_;
	

	std::vector<ObjectIcon> tiles_;
	std::vector<ObjectIcon> entities_;

	void loadObjects();
	void loadLevel();
	void saveLevel();

	void drawMenu();
	void drawLevel();

};

