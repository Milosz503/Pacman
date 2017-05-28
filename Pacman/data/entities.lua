
Colors = dofile("data/colors.lua")
 
 
function toPlayerBackCosts(nodes)
	player = world:getPlayer()
	playerX = player.x
	playerY = player.y
	
	print(playerX .. " " .. playerY)
	
	playerX = playerX - player:getSpeed().x
	playerY = playerY - player:getSpeed().y
	
	print(playerX .. " " .. playerY)
	
	node = NodeCost.new(playerX, playerY)
	node.cost = 100
	nodes:add(node)
end
 
 

 
entities = {
	
	AggressiveGhost = dofile("data/entities/AggressiveGhost.lua"),
	
	YellowGhost = dofile("data/entities/YellowGhost.lua"),
	
	GuardGhost = dofile("data/entities/GuardGhost.lua"),
	
	
	RedGhost = dofile("data/entities/RedGhost.lua"),
	
	GreyGhost = dofile("data/entities/GreyGhost.lua"),	
	
	Player = {
		type = "entity";
		category = "player";
		
		speed = 10;
		texture = {x = 0, y = 2, color = Colors.yellow};
		
		
		collide = function(self, object)
		
			if object.category == "ghost" then
				print("COLLISION")
				world:removeEntities()
			end
			
			if object.type == "entity" then
				print("Entity Col")
			end
			

		
		end
		
	},
 

}



tiles = {

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
	
	Point = {
		type = "tile";
		category = "point";
		
		isPhysical = false;
		texture = {x = 10, y = 12; color = Colors.green};
		
		collide = function (self, object)
			if object.category == "player" then
				world:addScore(1)
				self:remove()
			end
		
		end
	},
	
	-- Teleport = {
		-- type = "tile";
		-- category = "teleport";
		
		-- isPhysical = false;
		-- texture = {x = 5, y = 74};
		
		
	-- },
	
	Floor = { 
		type = "tile";
		category = "none";
		
		isPhysical = false;
		texture = {x = 15, y = 15};
	},


}