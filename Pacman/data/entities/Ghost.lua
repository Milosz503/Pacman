Ghost = Class:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 13,

	texture = {x = 6, y = 2, color = Colors.yellow },
	
	isScared = false,
	isScaredTime = -1,
})



function Ghost.getProperties()
	
	return {
	
	}
	
end

function Ghost:init()

end

function Ghost:update()
	
	if self.isScared then
		self.isScaredTime = self.isScaredTime - 1/60
		
		if self.isScaredTime <= 0 then
			self.isScared = false
			self.handle:setColor(self.texture.color or Colors.white)
		elseif self.isScaredTime <= 2 then
			r = math.floor(self.isScaredTime * 4) % 2
			if r == 0 then
				self.handle:setColor(Colors.blue)
			else
				self.handle:setColor(self.texture.color or Colors.white)
			end
			
		end
		
		
	end
	
end


function Ghost:setScared(seconds)
	
	self.handle:setColor(Colors.blue)
	self.isScared = true
	
	if self.isScaredTime < seconds then
		self.isScaredTime = seconds
	end

	
end


return Ghost