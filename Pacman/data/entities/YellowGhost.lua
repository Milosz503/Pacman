return {

	type = "entity";
	category = "ghost";
		
	speed = 20;
		
	texture = {x = 6, y = 2, color = Colors.yellow };


	update = function(self)
		
		player = world:getPlayer()
		
		self:guideTo(player)
	
	end




}