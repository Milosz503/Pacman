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
		color = 4,

	
	}
	
end



function YellowGhost:init()
	
	handle = self.handle
	
	properties = self.properties;
	--handle = self
	--self = handle.vars
	
	
	self.homeX = properties.homeX
	self.homeY = properties.homeY
	
	self.focusTime = properties.focusTime or 8
	self.focusTime = self.focusTime*60
	
	print("Color "..properties.color)
	handle:setColor(properties.color)
	
	
	self.start = 0
	self.visionRange = 15
	self.state = "new"
	
	handle:guideToPath(self.homeX, self.homeY)

	
end

function YellowGhost:update()
	
	handle = self.handle
	
	--handle = self
	--self = handle.vars

	
	player = world:getPlayer()
	
	distance = world:getDistance(handle, player)

	
	if self.state == "new" then
		
		if handle.x == self.homeX and handle.y == self.homeY then
			handle:guideToDirection(self.homeX, self.homeY)
			self.state = "base"
			
			print("end new")
		end
		
		--print("new")
		
	elseif self.state == "base" then
		
		if distance <= self.visionRange then
			handle:guideToPlayer(1, 1)
			self.start = world:getTime()
			self.state = "player"
		end
		
	elseif self.state == "player" then
		
		if distance > (self.visionRange + 2) then
			handle:guideToTile(self.homeX, self.homeY)
			self.state = "base"
		end
		
		if (world:getTime() - self.start) > self.focusTime then
			handle:guideToTile(self.homeX, self.homeY)
			self.state = "new"
		end
		
	end
	
	pos = player:getPosition()
	speed = player:getSpeed()
	
	pos.x = pos.x + speed.x
	pos.y = pos.y + speed.y
	
	print(speed.x.." "..speed.y.." "..pos.x.." "..pos.y)
	
	-- handle:guideTo(pos.x, pos.y)
	-- handle:setGuideType("a_star")
end


return YellowGhost