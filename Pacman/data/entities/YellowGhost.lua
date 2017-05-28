
return {
		type = "entity";
		category = "ghost";
		
		speed = 12;

		texture = {x = 6, y = 2, color = Colors.yellow };
		
		init = function(self, properties)
			
			vars = self.vars
			vars.start = 0
			if properties then
				vars.homeX = properties.homeX or 26
				vars.homeY = properties.homeY or 1
				vars.focusTime = properties.focusTime or 8
				vars.focusTime = vars.focusTime*60
				
				if properties.color ~= nil then
					self:setColor(properties.color)
				end
				
			else
				vars.homeX = 1
				vars.homeY = 1
				vars.focusTime = 500
			end
			

			vars.visionRange = 15
			vars.state = "new"
			
			self:guideTo(vars.homeX, vars.homeY)
			self:setGuideType("a_star")
			
		end;
		
		
		update = function(self)
			
			player = world:getPlayer()
			distance = world:getDistance(self, player)
			
			vars = self.vars
			
			if vars.state == "new" then
				
				if self.x == vars.homeX and self.y == vars.homeY then
					self:setGuideType("direction")
					vars.state = "base"
					
					print("end new")
				end
				
				print("new")
				
			elseif vars.state == "base" then
				
				if distance <= vars.visionRange then
					self:guideTo(player)
					vars.start = world:getTime()
					vars.state = "player"
				end
				
			elseif vars.state == "player" then
				
				if distance > (vars.visionRange + 2) then
					self:guideTo(vars.homeX, vars.homeY)
					vars.state = "base"
				end
				
				if (world:getTime() - vars.start) > vars.focusTime then
					self:guideTo(vars.homeX, vars.homeY)
					vars.state = "new"
				end
				
			end
			

			-- print (vars.homeX.. " " .. vars.homeY)
			

			
			-- speedX = 0
			-- speedY = 0
			
			-- if player.x < self.x then speedX = -1
			-- elseif player.x > self.x then speedX = 1 end
			
			-- if player.y < self.y then speedY = -1
			-- elseif player.y > self.y then speedY = 1 end
			
			--self:setSpeed(speedX, speedY)
			
		end
	}