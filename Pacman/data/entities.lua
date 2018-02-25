require "data.new_lua.Class"

Colors = dofile("data/colors.lua")
Ghost = dofile("data/entities/Ghost.lua")
 
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
	
	
	YellowGhost = dofile("data/entities/YellowGhost.lua"),
	
	PinkGhost = dofile("data/entities/PinkGhost.lua"),
	
	BlueGhost = dofile("data/entities/BlueGhost.lua"),
	
	RedGhost = dofile("data/entities/RedGhost.lua"),
	
	Player = {
		type = "entity";
		category = "player";
		
		speed = 7;
		texture = {x = 2, y = 2, color = Colors.yellow};
		

		
		collide = function(self, object)
			
			-- if object.category == "ghost" then
				-- print("COLLISION")
				-- world:removeEntities()
			-- end
			
			-- if object.type == "entity" then
				-- print("Entity Col")
			-- end
			

		
		end
		
	},
 

}





return entities