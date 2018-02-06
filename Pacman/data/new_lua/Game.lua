Game = {frameNumber = 0}

Game.level = {}
Game.levelLogic = {}

Game.entityFactory = {}
Game.tileFactory = {}

Game.entities = {}
Game.tiles = {}


function Game.init(levelFileName)
	
	level = dofile(levelFileName)
	Game.level = level or {}
	
	if type(level.levelLogic) == "string" then
		Game.levelLogic = dofile(level.levelLogic) or {}
	else
		print("levelLogic ? :"..level.levelLogic)
	end
	
	
	
	Game.entityFactory = dofile("data/entities.lua") or {}
	Game.tileFactory = dofile("data/tiles.lua") or {}
	
	
	LevelManager.loadLevel(levelFileName)
	--LevelManager.saveLevel("data/levels/save2.lua")
	
end

function Game.update(frameNumber)
	Game.frameNumber = frameNumber
	--print "update"
	i = 0
	for k,v in pairs(Game.entities) do
		if v.update ~= nil then
			v:update()
		end
		i = i+1
	end
	
	print("updated "..i.." entities")
	i = 0
	for k,v in pairs(Game.tiles) do
		if v.update ~= nil then
			v:update()
		end
		i = i+1
	end
	print("updated "..i.." tiles")
	
	if Game.levelLogic ~= nil and Game.levelLogic.update ~= nil then
		Game.levelLogic.update()
	end
	
end

function Game.collision(handle1, handle2)
	
	
	e1 = handle1.self
	e2 = handle2.self
	
	if e1.collide ~= nil then
		e1:collide(e2)
	end
	
	if e2.collide ~= nil then
		e2:collide(e1)
	end
	
	if Game.levelLogic.collision then
		Game.levelLogic.collision(e1, e2)
	end
	
end

function Game.initObject(object, properties)

	--set properties
	properties = properties or {};
	-- mt = {__index = {}}
	-- if object.getProperties ~= nil then
		-- mt.__index = object.getProperties()
	-- end
	-- setmetatable(properties, mt)
	-- object.properties = properties
	
	object.properties = {}
	if object.getProperties ~= nil then
		object.properties = object.getProperties()
	end
	
	for k, v in pairs(properties) do
		object.properties[k] = v
	end
	
	
	
	
	--insert to objects
	if object.type == "tile" then
		if object.update ~= nil then
			table.insert(Game.tiles, object)
		end
	else
		table.insert(Game.entities, object)
	end
	
	
	--configure
	if object.texture ~= nil then
		handle:setTexture(object.texture.x or 0, object.texture.y or 0)
		handle:setColor(object.texture.color or 0)
	end
	
	if object.type == "tile" then
		
		object.handle:setPhysical(object.isPhysical or false)
		
	end
	
	
	
	
	--init
	if object.init ~= nil then
		object:init()
	end
	
end

function Game.createEntity(name, properties)
	if type(name) ~= "string" then
		print("Error name is not a string!")
		return
	end
	newEntity = Game.entityFactory[name]
	newEntity.name = name
	
	if newEntity.new ~= nil then
		newEntity = newEntity:new()
	end
	

	--set handle
	handle = world:createEntityHandle(newEntity, newEntity.category)
	newEntity.handle = handle
	
	Game.initObject(newEntity, properties)
	
	return newEntity
	
end

function Game.createTile(name, properties, x, y)
	
	if type(name) ~= "string" then
		print("Error name is not a string!")
		return
	end
	newTile = Game.tileFactory[name]
	newTile.name = name
	
	if newTile.new ~= nil then
		newTile = newTile:new()
	end
	
	--set handle
	handle = world:createTileHandle(newTile, newTile.category, x or 0, y or 0)
	newTile.handle = handle
	
	Game.initObject(newTile, properties)
	

	return newTile
	
end

function Game.onRemove(handle)
	
	e = handle.self
	for k,v in pairs(Game.entities) do
		if v == e then
			Game.entities[k] = nil
			print("-")
			return
		end
	end
	
	for k,v in pairs(Game.tiles) do
		if v == e then
			Game.tiles[k] = nil
			print("-")
			return
		end
	end
	
end
