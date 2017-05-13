local function chooseNextGoal(self)
	
	
	
	player = world:getPlayer()
	dist = world:getDistance(self, player)
	
	if dist > self.vars.visionRange then self:guideTo(world:getTile(20, 20))
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
		vars.visionRange = 8
		--
		
	end,
	
	
	update = function(self)
		vars = self.vars
	
		
		chooseNextGoal(self)
		--if player ~= nil then
		
		
		
		
		--end
			
	end
}
