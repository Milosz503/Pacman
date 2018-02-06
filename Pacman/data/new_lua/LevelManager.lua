LevelManager = {levelFile = "", tiles = {}, entities = {}}


function LevelManager.loadLevel(fileName)
	LevelManager.levelFile = fileName
	
	level = dofile(fileName)
	
	tiles = level.tiles
	
	LevelManager.tiles = tiles
	LevelManager.objects = level.objects
	
	width = tiles.width or 0
	height = tiles.height or 0
	
	world:setSize(width, height)
	
	for y=1,height or 0 do
		
		for x=1,width do
			cell = tiles[y][x]	
			if cell ~= nil and cell.name ~= nil then
				Game.createTile(cell.name, cell.data or {}, x-1, y-1)
			end
			
		end
		
	end
	
	LevelManager.loadEntities()
	
end

function LevelManager.loadEntities()
	
	for i=1,#LevelManager.objects do
		
		object = LevelManager.objects[i]
	
		entity = Game.createEntity(object.name, object.data)
		entity.handle:setPosition(object.x or 0, object.y or 0)
	end
	
end

function LevelManager.saveLevel(fileName)
	
	fileName = fileName or LevelManager.levelFile
	
	if fileName == "" then
		print("Error: can not save level without file name!")
	end
	
	tiles = {}
	entities = {}
	
	width = world:getWidth()
	height = world:getHeight()
	
	tiles.width = width
	tiles.height = height
	print("h w "..height.." "..width)
	
	for y=1,height do
		tiles[y] = {}
		
		for x=1,width do
			cell = {}
			
			tile = world:getTile(x-1, y-1)
			if tile ~= nil then
				cell.name = tile.self.name or ""
				tiles[y][x] = cell
			end
		end
	end
	
	for k,entity in pairs(Game.entities) do
		
		cell = {}
		
		cell.name = entity.name
		cell.x = entity.handle.x
		cell.y = entity.handle.y
		cell.data = entity.properties
		
		table.insert(entities, cell)
		
	end
	
	level = {}
	level.tiles = tiles
	level.objects = entities
	level.levelLogic = Game.level.levelLogic
	
	generator = dofile("data/scripts/data_generator.lua")
	generator.openFile(fileName)
	generator.generate(level)
	generator.closeFile()
	
	
	
end