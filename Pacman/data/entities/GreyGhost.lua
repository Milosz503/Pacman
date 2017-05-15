local homeX = 1
local homeY = 29

return {
		type = "entity";
		category = "ghost";
		
		speed = 13;

		texture = {x = 6, y = 2, color = Colors.grey };
		
		init = function(self, properties)
			
			vars = self.vars

			vars.visionRange = 12
			vars.state = "new"
			
			self:guideTo(homeX, homeY)
			self:setGuideType("a_star")
			
		end;
		
		
		update = function(self)
			
			player = world:getPlayer()
			distance = world:getDistance(self, player)
			
			vars = self.vars
			
			if vars.state == "new" then
				
				if self.x == homeX and self.y == homeY then
					self:setGuideType("direction")
					--self:guideTo(player)
					vars.state = "base"
					
					print("end new")
				end
				
				print("new")
				
			elseif vars.state == "base" then
				
				if distance <= vars.visionRange then
					self:guideTo(player)
					vars.state = "player"
				end
				
			elseif vars.state == "player" then
				
				if distance > (vars.visionRange + 2) then
					self:guideTo(homeX, homeY)
					vars.state = "base"
				end
				
			end
			

			
			

			
			-- speedX = 0
			-- speedY = 0
			
			-- if player.x < self.x then speedX = -1
			-- elseif player.x > self.x then speedX = 1 end
			
			-- if player.y < self.y then speedY = -1
			-- elseif player.y > self.y then speedY = 1 end
			
			--self:setSpeed(speedX, speedY)
			
		end
	}