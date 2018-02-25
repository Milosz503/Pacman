return {

	GhostBase = {
		type = "tile";
		category = "ghostBase";
		
		isPhysical = true;
		
		texture = {x = 4, y = 3, color = Colors.lightGrey};
	},
	
	

	

	
	
	AutoWall = dofile("data/tiles/AutoWall.lua"),
		
		
	
	Point = Class:new({
		type = "tile";
		category = "point";
		
		isPhysical = false;
		texture = {x = 10, y = 12; color = Colors.green};
		
		score = 10
	}),
	
	
	Buff = Class:new({
		
		type = "tile",
		category = "pickup",
		
		isPhysical = false,
		
		texture = {x = 10, y = 11; color = Colors.white},
		
		init = function(self)
			self.state = "pickup"
		end,
		
		collide = function (self, object)
		
			if self.state == "pickup" and object.handle.category == "player" then
				world:playSound("GameWon")
				world:addScore(100)
				self.handle:remove()
			end
		
		end,
		
		update = function(self)
		
		end,
	}),
	
	
	Floor = { 
		type = "tile";
		category = "none";
		
		isPhysical = false;
		texture = {x = 15, y = 15};
	},


}
