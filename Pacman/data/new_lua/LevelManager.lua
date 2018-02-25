LevelManager = {levelFile = "", tiles = {}, entities = {}}

function LevelManager.fileExists(name)
   local f=io.open(name,"r")
   if f~=nil then io.close(f) return true else return false end
end

function LevelManager.loadLevel(fileName)
	world:removeEntities()
	world:removeTiles()

	LevelManager.levelFile = fileName
	
	local level = {}
	if LevelManager.fileExists(fileName) then
		level = dofile(fileName)
	end
	
	if level.levelLogic ~= nil and type(level.levelLogic) == "string" then
		Game.levelLogic = dofile(level.levelLogic) or {}
		Game.levelLogicFile = level.levelLogic
	else
		Game.levelLogicFile = "data/LevelLogic.lua"
		Game.levelLogic = dofile(Game.levelLogicFile) or {}
	end
	
	
	tiles = level.tiles or {}
	
	LevelManager.tiles = tiles
	LevelManager.objects = level.objects or {}
	
	width = tiles.width or 0
	height = tiles.height or 0
	
	world:setSize(width, height)
	
	for y=1,height do
		
		for x=1,width do
			cell = tiles[y][x]	
			if cell ~= nil and cell.name ~= nil then
				Game.createTile(cell.name, cell.data or {}, x-1, y-1)
			end
			
		end
		
	end
	
	LevelManager.loadEntities()
	
	if Game.levelLogic ~= nil then
		Game.levelLogic.init()
	end
	
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
	
	width = world.width
	height = world.height
	
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
				cell.data = tile.self.properties
				tiles[y][x] = cell
			end
		end
	end
	print("tiles saved")
	for k,entity in pairs(Game.entities) do
		print("saving entity "..entity.name)
		cell = {}
		
		cell.name = entity.name
		cell.x = entity.handle.x
		cell.y = entity.handle.y
		cell.data = entity.properties
		
		table.insert(entities, cell)
		
	end
	print("entites saved")
	level = {}
	level.tiles = tiles
	level.objects = entities
	level.levelLogic = Game.levelLogicFile
	
	generator = dofile("data/scripts/data_generator.lua")
	generator.openFile(fileName)
	generator.generate(level)
	generator.closeFile()
	
	
	
end