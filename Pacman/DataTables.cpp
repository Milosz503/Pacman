#include "DataTables.h"

//std::array<TileTable, Tile::TypeCount> initializeTileData()
//{
//	std::array<TileTable, Tile::TypeCount> table;
//
//	table[Tile::None].texture = TextureManager::getTexture(L' ', CharacterColor::White);
//	table[Tile::None].isPhysical = false;
//
//	table[Tile::Wall].texture = TextureManager::getTexture(L'#', CharacterColor::White);
//	table[Tile::Wall].isPhysical = true;
//
//	table[Tile::Teleport].texture = TextureManager::getTexture(L'#', CharacterColor::Blue);
//	table[Tile::Teleport].isPhysical = false;
//
//	table[Tile::Border].texture = TextureManager::getTexture(L'#', CharacterColor::Red);
//	table[Tile::Border].isPhysical = true;
//
//	table[Tile::Point].texture = TextureManager::getTexture(L'P', CharacterColor::Green);
//	table[Tile::Point].texture.rect = sf::Vector2i(10, CharacterColor::Green * 16 + 12);
//	table[Tile::Point].isPhysical = false;
//
//
//
//	return table;
//}

//std::array<EntityTable, Entity::TypeCount> initializeEntityData()
//{
//	std::array<EntityTable, Entity::TypeCount> table;
//
//	table[Entity::Pacman].texture = TextureManager::getTexture(L'P', CharacterColor::White);
//	table[Entity::Pacman].speed = 10;
//	table[Entity::Pacman].hitpoints = 5;
//	table[Entity::Pacman].isVulnerable = true;
//	table[Entity::Pacman].secondTexture = TextureManager::getTexture(L'p', CharacterColor::White);
//
//	Animation pacman = Animation(15);
//	pacman.frames.push_back(TextureManager::getTexture(L'C', CharacterColor::Yellow));
//	pacman.frames.push_back(TextureManager::getTexture(L'c', CharacterColor::Yellow));
//	table[Entity::Pacman].animations[Animation::Vulnerable] = pacman;
//
//	Animation pacman2 = Animation(30);
//	pacman2.frames.push_back(TextureManager::getTexture(L'P', CharacterColor::Green));
//	pacman2.frames.push_back(TextureManager::getTexture(L'P', CharacterColor::Blue));
//	table[Entity::Pacman].animations[Animation::Invulnerable] = pacman2;
//
//
//
//
//	table[Entity::Ghost].texture = TextureManager::getTexture(L'G', CharacterColor::Red);
//	table[Entity::Ghost].speed = 20;
//	table[Entity::Ghost].hitpoints = 10;
//	table[Entity::Ghost].isVulnerable = false;
//	table[Entity::Ghost].secondTexture = TextureManager::getTexture(L'g', CharacterColor::Blue);
//
//	Animation ghost = Animation(30);
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::Red));
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::Red));
//	table[Entity::Ghost].animations[Animation::Invulnerable] = ghost;
//
//	ghost = Animation(30);
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::LightGrey));
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::Blue));
//	table[Entity::Ghost].animations[Animation::Vulnerable] = ghost;
//
//
//	table[Entity::SlowGhost].texture = TextureManager::getTexture(L'G', CharacterColor::White);
//	table[Entity::SlowGhost].speed = 15;
//	table[Entity::SlowGhost].hitpoints = 10;
//	table[Entity::SlowGhost].isVulnerable = false;
//	table[Entity::SlowGhost].secondTexture = TextureManager::getTexture(L'g', CharacterColor::Blue);
//
//	ghost = Animation(30);
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::Red));
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::LightGrey));
//	table[Entity::SlowGhost].animations[Animation::Invulnerable] = ghost;
//
//	ghost = Animation(30);
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::LightGrey));
//	ghost.frames.push_back(TextureManager::getTexture(L'G', CharacterColor::Blue));
//	table[Entity::SlowGhost].animations[Animation::Vulnerable] = ghost;
//
//
//	return table;
//}
