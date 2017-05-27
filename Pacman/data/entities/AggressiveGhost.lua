

local function chooseNextGoal(self)
	
	
	
	player = world:getPlayer()
	dist = world:getDistance(self, player)
	
	if dist > self.vars.visionRange then self:guideTo(1,1)
		else self:guideTo(player) end
	
end

return
{
	type = "entity";
	category = "ghost";
		
	speed = 20;
		
	texture = {x = 6, y = 2, color = Colors.green };
		
	init = function(self, data) 
			
		vars = self.vars
		
		--Lua data
		vars.visionRange = 10
		--
		
		self:setGuideType("a_star")
		
	end,
	
	
	update = function(self)
		vars = self.vars
	
		--self:setSpeed(1, 0)
		--chooseNextGoal(self)
		--if player ~= nil then
		
		player = world:getPlayer()
		self:guideTo(player)
		
		
		
		--end
			
	end
}
