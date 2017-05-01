
 
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



tiles = {
	
	{ 
		name = "floor",
		isPhysical = false,
		texture = {
			x = 5,
			y = 10,--+(color.RED*16),
		},
		
	},
	
	{
		name = "teleport",
		isPhysical = false,
		texture = {
			x = 5,
			y = 74,
		},
		
		collide = function()
			
		end,
	},
	
	{
		name = "wall",
		isPhysical = true,
		texture = {
			x = 4,
			y = 3,
		},
		
		collide = function()
			print("WALL COL")
		end
		
	},
	
	{
		name = "point",
		isPhysical = false,
		texture = {
			x = 10,
			y = 44,
		},
		
		
		update = function()
			
		end,
		
		collide = function()

			
		end,
		
		onEvent = function(tile, event)
		
		end
		
	},

}