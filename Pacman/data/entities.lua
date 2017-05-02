
Colors = dofile("data/colors.lua")
 
 
 
 
 
entities = {
 
	RedGhost = {
		type = "entity";
		category = "ghost";
		
		speed = 20;
		visionRange = 4;
		texture = {x = 5, y = 2, color = Colors.red};
		
		update = function(self)
			player = world:findEntity(function(e)
				if e.category == "player" then return true end
				return false
			end)
			
			speedX = 0
			speedY = 0
			
			if player.x < self.x then speedX = -1
			elseif player.x > self.x then speedX = 1 end
			
			if player.y < self.y then speedY = -1
			elseif player.y > self.y then speedY = 1 end
			
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
			print("collide wall ".. self.x .. " " .. self.y .. " " .. self.name .. " " .. self.type)
			print("Score: " .. world.score)
			self:setColor(Colors.red)
			
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
		texture = {x = 5, y = 10, color = Colors.darkGrey};
	},


}