YellowGhost = Class:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 12,

	texture = {x = 6, y = 2, color = Colors.yellow }
})



function YellowGhost.getProperties()
	
	return {
		
		homeX = 0,
		homeY = 0,
		color = 2
	
	}
	
end



function YellowGhost:init(properties)
	
	handle = self.handle
	
	--handle = self
	--self = handle.vars
	
	
	self.homeX = properties.homeX
	self.homeY = properties.homeY
	
	self.focusTime = properties.focusTime or 8
	self.focusTime = self.focusTime*60
	
	handle:setColor(properties.color)
	
	
	self.start = 0
	self.visionRange = 15
	self.state = "new"
	
	handle:guideTo(self.homeX, self.homeY)
	handle:setGuideType("a_star")
	
	
end

function YellowGhost:update()
	
	handle = self.handle
	
	--handle = self
	--self = handle.vars

	
	player = world:getPlayer()
	
	distance = world:getDistance(handle, player)

	
	if self.state == "new" then
		
		if handle.x == self.homeX and handle.y == self.homeY then
			handle:setGuideType("direction")
			self.state = "base"
			
			print("end new")
		end
		
		print("new")
		
	elseif self.state == "base" then
		
		if distance <= self.visionRange then
			handle:guideTo(player)
			self.start = world:getTime()
			self.state = "player"
		end
		
	elseif self.state == "player" then
		
		if distance > (self.visionRange + 2) then
			handle:guideTo(self.homeX, self.homeY)
			self.state = "base"
		end
		
		if (world:getTime() - self.start) > self.focusTime then
			handle:guideTo(self.homeX, self.homeY)
			self.state = "new"
		end
		
	end
	
end


return YellowGhost