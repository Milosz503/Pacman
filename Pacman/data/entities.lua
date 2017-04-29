
 
 -- player = 
 -- {
	-- texture = {
		-- x = 0,
		-- y = 2,
	-- }
 -- }
 color = dofile("data/colors.lua")
 
 
 entities = {
 
	{
		name = "redGhost",
		texture = {
			x = 5,
			y = 2,
		},
		
		speed = 20,
		visionRange = 4,
	},
	
	{
		name = "player",
		texture = {
			x = 0,
			y = 2,
		},
		
		speed = 10,
		visionRange = 4,
	}

}

vars = {};

tiles = {
	
	{ 
		name = "floor",
		isPhysical = false,
		texture = {
			x = 5,
			y = 10+(color.RED*16),
		},
		
	},
	
	{
		name = "teleport",
		isPhysical = false,
		texture = {
			x = 5,
			y = 74,
		},
		
		collide = function(self, object)
			print("TELEPORT")
			object:setPosition(3, 4)
			
		end,
	},
	
	{
		name = "wall",
		isPhysical = true,
		texture = {
			x = 4,
			y = 3,
		},
		
		collide = function(self, object)
			tile = world:getTile(6, 4)
			if tile then
				print("tile ")
				print(tile)
				tile:setColor(color.LIGHTGREY)
				tile:setTexture(2, 2)
			end
		end
		
	},
	
	{
		name = "point",
		isPhysical = false,
		texture = {
			x = 10,
			y = 44,
		},
		
		
		update = function(self, data)
			if vars[1] == nil then vars[1] = 1; end
			vars[1] = vars[1] + 1;
			print(vars[1])
		end,
		
		collide = function(self, object)
			--print("KOLIZJA")
			if object.name == "player" then
				world:removeObject(self)
				world:addScore(1)
			end
			

			
		end,
		
		onEvent = function(tile, event)
		
		end
		
	},

}