
Colors = dofile("data/colors.lua")
 
 
 
 
 
entities = {
 
	RedGhost = {
		type = "entity";
		category = "ghost";
		
		speed = 20;
		visionRange = 4;
		texture = {x = 5, y = 2, color = Colors.red};
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