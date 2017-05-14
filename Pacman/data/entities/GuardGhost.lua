return {

	type = "entity";
	category = "ghost";
		
	speed = 20;
		
	texture = {x = 6, y = 2, color = Colors.blue };
	
	init = function(self, data)
		
		vars = self.vars;
		
		vars.homeX = data.x
		vars.homeY = data.y
		
		
		
	end,
	
	update = function(self)
		
		vars = self.vars
		

		
		self:guideTo(world:getTile(vars.homeX, vars.homeY))
	
	end




}