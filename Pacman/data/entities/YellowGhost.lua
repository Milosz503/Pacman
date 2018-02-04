
return {
		type = "entity";
		category = "ghost";
		
		speed = 12;

		texture = {x = 6, y = 2, color = Colors.yellow };
		
		properties = {homeX = 0, homeY = 0, focusTime = 0, colors.yellow};
		
		init = function(handle, properties)
			
			self = handle.vars
			self.start = 0
			if properties then
				self.homeX = properties.homeX or 26
				self.homeY = properties.homeY or 1
				self.focusTime = properties.focusTime or 8
				self.focusTime = self.focusTime*60
				
				if(properties.x ~= nil) then
					handle.defaultSpeed = properties.x
				end
				
				if properties.color ~= nil then
					handle:setColor(properties.color)
				end
				
			else
				self.homeX = 1
				self.homeY = 1
				self.focusTime = 500
			end
			

			self.visionRange = 15
			self.state = "new"
			
			handle:guideTo(self.homeX, self.homeY)
			handle:setGuideType("a_star")
			
		end;
		
		
		update = function(handle)
			
			player = world:getPlayer()
			distance = world:getDistance(handle, player)
			
			self = handle.vars
			
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
	}