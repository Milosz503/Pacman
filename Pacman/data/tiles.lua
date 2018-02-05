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
	

	
	
	Wall = {
		type = "tile";
		category = "wall";
		
		isPhysical = true;
		texture = {x = 4, y = 3; color = Colors.blue};
		
		collide = function (self)
			-- print("collide wall ".. self.x .. " " .. self.y .. " " .. self.name .. " " .. self.type)
			-- print("Score: " .. world.score)
			 --self:setColor(Colors.red)
			
		end
		
	},
	
	Point = Class:new({
		type = "tile";
		category = "point";
		
		isPhysical = false;
		texture = {x = 10, y = 12; color = Colors.green};
		
		collide = function (self, object)
			
			
		
			if object.handle.category == "player" then
				world:addScore(1)
				self.handle:remove()
			end
		
		end
	}),
	
	
	Floor = { 
		type = "tile";
		category = "none";
		
		isPhysical = false;
		texture = {x = 15, y = 15};
	},


}
