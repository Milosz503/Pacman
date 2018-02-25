

LevelLogic = {
	
	pointNumber = 0,
	
	leftTimeScared = -1,
	
	
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
		
		
		-- remove scared effect
		if LevelLogic.leftTimeScared > 0 then
			
			LevelLogic.leftTimeScared = LevelLogic.leftTimeScared - 1/60
			if LevelLogic.leftTimeScared < 0 then
				
				for k, v in pairs(Game.entities) do
					if v.category == "ghost" then
						v:setScared(false)
					end
				end
			end
		end
		

		
	end,
	
	collision = function(object1, object2)
		
		--print (object1.category .. "  " .. object2.category)
		
		if (object1.category == "player" or object2.category == "player") and
			(object1.category == "ghost" or object2.category == "ghost") then
			
			local ghost = {}
			if object1.category == "ghost" then ghost = object1
			else ghost = object2 end
		
			if not ghost.isScared then
				if world.lives > 0 then
					world:removeEntities()
					world:removeLive()
					LevelManager.loadEntities()
				else
					world:playSound("GameOver")
					world:endGame("GAME OVER!", Colors.red)
				end
			else
				
				
				entity = Game.createEntity(ghost.prefab.name, ghost.prefab.data)
				entity.handle:setPosition(ghost.prefab.x or 0, ghost.prefab.y or 0)
				entity.prefab = ghost.prefab
				
				ghost.handle:remove()
				
				world:addScore(500)
				
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

function LevelLogic.setGhostScared(seconds)
	LevelLogic.leftTimeScared = seconds or 10
	
	for k, v in pairs(Game.entities) do
		
		if v.category == "ghost" then
			v:setScared(true)
		end
	end
	
	
end



return LevelLogic