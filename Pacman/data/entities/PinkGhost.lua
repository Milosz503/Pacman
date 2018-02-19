PinkGhost = Class:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 12,

	texture = {x = 6, y = 2, color = Colors.pink }
})



function PinkGhost.getProperties()
	
	return {
		

	
	}
	
end



function PinkGhost:init()
	
	handle = self.handle
	

	
	handle:guideToPlayer(1, 100)
	handle.guidePriority = 1

	
end

function PinkGhost:update()
	
end


return PinkGhost