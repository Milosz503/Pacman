

levelLogic = {
	
	update = function(vars)
		--print("Level LOGIC!")
		
		if vars.lives == nil then
			vars.lives = 3
		end
		
	end,
	
	collide = function(vars, object1, object2)
		
		print (object1.category .. "  " .. object2.category)
		
		if (object1.category == "player" or object2.category == "player") and
			(object1.category == "ghost" or object2.category == "ghost") then
			
			print("PLAYER - GHOST")
			
			if vars.lives > 0 then
			
				world:spawnEntities()
				vars.lives = vars.lives - 1
			end
			
			
		end
		
		
		
	end

}