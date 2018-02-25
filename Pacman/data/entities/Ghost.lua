Ghost = Class:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 10,

	texture = {x = 6, y = 2, color = Colors.yellow },
	
})



function Ghost.getProperties()
	
	return {
	
	}
	
end



function Ghost:init()
	
	self.state = "chase"
	self.isScared = false
	
end


function Ghost:setScared(isScared)
	
	if isScared then
		self.handle:setColor(Colors.blue)
		self.isScared = true
	else
		self.handle:setColor(self.texture.color or Colors.white)
		self.isScared = false
	end
	
end


return Ghost