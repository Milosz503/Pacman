Game = {frameNumber = 0}

Game.level = {}
Game.levelLogic = {}

Game.entityFactory = {}
Game.tileFactory = {}

Game.objects = {}


function Game.init(levelFileName)
	
	level = dofile(levelFileName)
	Game.level = level or {}
	Game.levelLogic = level.levelLogic or {}
	
	
	
	Game.entityFactory = dofile("data/entities.lua") or {}
	Game.tileFactory = dofile("data/tiles.lua") or {}
	
	
	LevelManager.loadLevel(levelFileName)
	
end

function Game.update(frameNumber)
	Game.frameNumber = frameNumber
	
	for k,v in ipairs(Game.objects) do
		if v.update ~= nil then
			v:update()
		end
	end
	
	if Game.levelLogic ~= nil then
		Game.levelLogic.update()
	end
	
end

function Game.collision(handle1, handle2)
	
	e1 = handle1.self
	e2 = handle2.self
	
	if e1.collide ~= nil then
		e1:collide(e2)
	end
	
	if e2.type == "entity" and e2.collide ~= nil then
		e2:collide(e1)
	end
	
	if Game.levelLogic.collision then
		Game.levelLogic.collision(e1, e2)
	end
	
end

function Game.initObject(object, properties)

	--set properties
	properties = properties or {};
	mt = {__index = {}}
	if object.getProperties ~= nil then
		mt.__index = object.getProperties()
	end
	setmetatable(properties, mt)
	object.properties = properties
	
	
	--insert to objects
	table.insert(Game.objects, object)
	
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

	for k,v in ipairs(Game.objects) do
		if v == e then
			Game.objects[k] = nil
		end
	end
end
