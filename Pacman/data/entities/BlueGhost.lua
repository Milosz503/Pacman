PinkGhost = Ghost:new({
		
	speed = 7,

	texture = {x = 6, y = 2, color = Colors.cyan }
})



function PinkGhost.getProperties()
	
	return {
		

	
	}
	
end



function PinkGhost:init()
	Ghost.init(self)
	
	
	handle = self.handle
	
	
	
	
	handle:guideToPlayer(1, 6)
	handle.guidePriority = 4

	
end

function PinkGhost:update()
	Ghost.update(self)
end


return PinkGhost