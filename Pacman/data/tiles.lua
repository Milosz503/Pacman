return {

	GhostBase = {
		type = "tile";
		category = "ghostBase";
		
		isPhysical = true;
		
		texture = {x = 4, y = 3, color = Colors.lightGrey};
	},
	
	
	WallBL = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 15, y = 8};
	},
	
	
	WallHor = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 6, y = 8};
	},
	
	
	WallRB = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 2, y = 9};
	},
	
	
	WallVer = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 5, y = 8};
	},
	
	
	WallTR = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 12, y = 8};
	},
	

	
	WallLT = {
		type = "tile";
		category = "wall";
		isPhysical = true;
		
		texture = {x = 9, y  =8};
	},
	

	
	
	AutoWall = dofile("data/tiles/AutoWall.lua"),
		
		
	
	Point = Class:new({
		type = "tile";
		category = "point";
		
		isPhysical = false;
		texture = {x = 10, y = 12; color = Colors.green};
		
		collide = function (self, object)
		
			if object.handle.category == "player" then
				world:addScore(1)
				world:playSound("PickedPoint")
				self.handle:remove()
			end
		
		end
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
				world:addScore(10)
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
