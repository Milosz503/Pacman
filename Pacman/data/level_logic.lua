

levelLogic = {
	
	testVar = 1,
	
	update = function()
		--print("Level LOGIC!")


		
	end,
	
	collision = function(object1, object2)
		
		--print (object1.category .. "  " .. object2.category)
		
		if (object1.category == "player" or object2.category == "player") and
			(object1.category == "ghost" or object2.category == "ghost") then
			
			print("PLAYER - GHOST")
			
			if world.lives > 0 then
				world:removeEntities()
				world:removeLive()
				LevelManager.loadEntities()
			end
			
			
		end
		
		
		
	end

}

return levelLogic