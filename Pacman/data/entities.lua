
Colors = dofile("data/colors.lua")
 
 
 
 
 
entities = {
 
	RedGhost = {
		type = "entity";
		category = "ghost";
		
		speed = 20;
		visionRange = 8;
		texture = {x = 5, y = 2, color = Colors.red};
		
		init = function(self, properties)
			for k,v in ipairs(properties) do print(v) end
			print(properties["name"])
			print(" " .. properties.x .. "  " .. properties.y)
			vars = self.vars
			vars.x = properties.x-- or 4
			vars.y = properties.y-- or 4
			self.defaultSpeed = properties.speed or 30
			
		end;
		
		
		update = function(self)
			
			player = world:findEntity(function(e)
				if e.category == "player" then return true end
				return false
			end)
			
			distance = world:getDistance(self, player)
			
			if self:getDestination() == player then
				if distance > 10 then self:guideTo(world:getTile(self.vars.x, self.vars.y)) end
				
			elseif distance < 8 then
				self:guideTo(player) 
				
			else
				self:guideTo(world:getTile(self.vars.x, self.vars.y))
			end
			
			

			
			-- speedX = 0
			-- speedY = 0
			
			-- if player.x < self.x then speedX = -1
			-- elseif player.x > self.x then speedX = 1 end
			
			-- if player.y < self.y then speedY = -1
			-- elseif player.y > self.y then speedY = 1 end
			
			--self:setSpeed(speedX, speedY)
			
		end
	},
	
	
	Player = {
		type = "entity";
		category = "player";
		
		speed = 10;
		texture = {x = 0, y = 2, color = Colors.yellow};
		
	},
 

}



tiles = {
	
	
	Wall = {
		type = "tile";
		category = "wall";
		
		isPhysical = true;
		texture = {x = 4, y = 3; color = Colors.blue};
		
		collide = function (self)
			-- print("collide wall ".. self.x .. " " .. self.y .. " " .. self.name .. " " .. self.type)
			-- print("Score: " .. world.score)
			-- self:setColor(Colors.red)
			
		end
		
	},
	
	Point = {
		type = "tile";
		category = "point";
		
		isPhysical = false;
		texture = {x = 10, y = 12; color = Colors.green};
	},
	
	Teleport = {
		type = "tile";
		category = "teleport";
		
		isPhysical = false;
		texture = {x = 5, y = 74};
		
		
	},
	
	Floor = { 
		type = "tile";
		category = "none";
		
		isPhysical = false;
		texture = {x = 15, y = 15};
	},


}