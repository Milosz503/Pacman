 player = 
 {
	texture = {
		x = 0,
		y = 2,
	}
 }
 
 entities = {
 
	{
		name = "redGhost",
		texture = {
			x = 5,
			y = 2,
		},
		
		speed = 20,
		visionRange = 4,
	}

}

tiles = {
	
	{
		name = "floor",
		isPhysical = false,
		texture = {
			x = 5,
			y = 90,
		}
	},
	
	{
		name = "wall",
		isPhysical = true,
		texture = {
			x = 4,
			y = 3,
		}
	},
	
	{
		name = "point",
		isPhysical = false,
		texture = {
			x = 10,
			y = 44,
		},
		
		collide = function(scene, x, y)
			--print("KOLIZJA")
			if scene ~= nil then
				scene:removeTile(x, y)
			end
			world:addScore(1)
		end
		
	},

}