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
	

	
	
	Wall = Class:new({
		type = "tile";
		category = "wall";
		
		isPhysical = true;
		texture = {x = 4, y = 3; color = Colors.blue};
		
		init = function(self)
			x = self.handle.x
			y = self.handle.y
			
			self:updateGFX()
			
			handle = world:getTile(x+1, y)
			
			if handle ~= nil then
				if handle.self.updateGFX ~= nil then
					handle.self:updateGFX()
					
				end
			end
			
		end,
		
		updateGFX = function(self)
			x = self.handle.x
			y = self.handle.y
			
			tileL = world:getTile(x-1, y).self
			tileR = world:getTile(x+1, y).self
			tileT = world:getTile(x, y-1).self
			tileB = world:getTile(x, y+1).self
			
			
			if tileL.category == "wall" and tileT.category == "wall" then --LT
				self.handle:setTexture(2, 9)
			elseif tileR.category == "wall" and tileT.category == "wall" then --RT
				self.handle:setTexture(15, 8)
			elseif tileL.category == "wall" and tileB.category == "wall" then --LB
				self.handle:setTexture(12, 8)
			elseif tileR.category == "wall" and tileB.category == "wall" then --RB
				self.handle:setTexture(9, 8)
			elseif tileL.category == "wall" and tileR.category == "wall" then --Hor
				self.handle:setTexture(5, 8)
			elseif tileT.category == "wall" and tileB.category == "wall" then --Ver
				self.handle:setTexture(6, 8)
			end
			
		end,
		
		collide = function (self)
			-- print("collide wall ".. self.x .. " " .. self.y .. " " .. self.name .. " " .. self.type)
			-- print("Score: " .. world.score)
			 --self:setColor(Colors.red)
			
		end
		
	}),
	
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
