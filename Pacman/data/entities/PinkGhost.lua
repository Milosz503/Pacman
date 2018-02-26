PinkGhost = Ghost:new({
	
		
	speed = 8,

	texture = {x = 6, y = 2, color = Colors.pink }
})



function PinkGhost.getProperties()
	
	return {
		

	
	}
	
end



function PinkGhost:init()
	
	Ghost.init(self)
	
	handle = self.handle
	

	
	handle:guideToPlayer(1, 100)
	handle.guidePriority = 1

	
end

function PinkGhost:update()
	
	Ghost.update(self)
	
	-- self:super().update(self)
	
end


return PinkGhost