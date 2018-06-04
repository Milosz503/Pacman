RedGhost = Ghost:new({

		
	speed = 13,

	texture = {x = 6, y = 2, color = Colors.red }
})



function RedGhost.getProperties()
	
	return {
		
		homeX = 0,
		homeY = 0;
	
	}
	
end



function RedGhost:init()
	
	Ghost.init(self)
	
	handle = self.handle
	
	self.state = "start"
	
	self.homeX = self.properties.homeX
	self.homeY = self.properties.homeY
	
	handle:guideToDirection(self.homeX, self.homeY)

	
end

function RedGhost:update()
	
	Ghost.update(self)
	
	handle = self.handle
	
	if self.state == "start" then
		if handle.x == self.homeX and handle.y == self.homeY then
			self.state = "chase"
			player = world:getPlayer()
			handle:guideToDirection(player.x, player.y)
		end
	elseif self.state == "chase" then
		player = world:getPlayer()
		handle:guideToDirection(player.x, player.y)
	end
	
end


return RedGhost