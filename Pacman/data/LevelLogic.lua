

LevelLogic = {
	
	pointNumber = 0,
	
	
	init = function()
		
		world:setLives(2)
		
		for k, v in pairs(Game.tiles) do
			
			if v.category == "point" then
				LevelLogic.pointNumber = LevelLogic.pointNumber + 1
			end
			
		end
	
	end,
	
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
			else
				world:playSound("GameOver")
				world:endGame("GAME OVER!", Colors.red)
			end
			
			
		elseif object1.category == "player" and object2.category == "point" then
			
			world:addScore(object2.score or 1)
			world:playSound("PickedPoint")
			object2.handle:remove()
			
			LevelLogic.pointNumber = LevelLogic.pointNumber - 1
			if LevelLogic.pointNumber <= 0 then
				world:playSound("GameWon")
				world:endGame("GOOD JOB!", Colors.green)
			end
			
		end
		
		
		
	end

}

function LevelLogic:setGhostScared(seconds)
	
	
	
end



return LevelLogic