

levelLogic = {
	
	testVar = 1,
	
	update = function(vars)
		--print("Level LOGIC!")


		
	end,
	
	collide = function(vars, object1, object2)
		
		--print (object1.category .. "  " .. object2.category)
		
		if (object1.category == "player" or object2.category == "player") and
			(object1.category == "ghost" or object2.category == "ghost") then
			
			print("PLAYER - GHOST")
			
			if world.lives > 0 then
			
				world:spawnEntities()
				world:removeLive()
			end
			
			
		end
		
		
		
	end

}