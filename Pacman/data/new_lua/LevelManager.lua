LevelManager = {levelFile = ""}


function LevelManager.loadLevel(fileName)
	LevelManager.levelFile = fileName
	
	level = dofile(fileName)
	
	tiles = level.tiles
	objects = level.objects
	
	world:setSize(tiles.width or 0, tiles.height or 0)
	
	for i=1,#objects do
		
		object = objects[i]
	
		entity = Game.createEntity(object.name, object.data)
		entity.handle:setPosition(object.x or 0, object.y or 0)
	end
	
	for y=1,#tiles do
		
		for x=1,#tiles[y] do
			cell = tiles[y][x]	
			Game.createTile(cell.name, cell.data or {}, x-1, y-1)
			
		end
		
	end
	
end

function LevelManager.saveLevel(fileName)
	
	fileName = fileName or LevelManager.levelFile
	
	if fileName == "" then
		print("Error: can not save level without file name!")
	end
	
	
	
end