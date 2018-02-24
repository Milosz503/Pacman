Ghost = Class:new({
	
	type = "entity",
	category = "ghost",
		
	speed = 10,

	texture = {x = 6, y = 2, color = Colors.yellow },
	
})



function Ghost.getProperties()
	
	return {
		
		homeX = 0,
		homeY = 0,
		color = 4,

	
	}
	
end



function Ghost:init()
	
	self.state = "chase"

	
end

function Ghost:update()
	
	
	
end


return Ghost