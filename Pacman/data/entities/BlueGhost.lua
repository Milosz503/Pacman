PinkGhost = Ghost:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 10,

	texture = {x = 6, y = 2, color = Colors.cyan }
})



function PinkGhost.getProperties()
	
	return {
		

	
	}
	
end



function PinkGhost:init()
	
	handle = self.handle
	
	
	
	
	handle:guideToPlayer(1, 6)
	handle.guidePriority = 4

	
end

function PinkGhost:update()
	
end


return PinkGhost