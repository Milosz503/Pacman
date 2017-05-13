return {
		type = "entity";
		category = "ghost";
		
		speed = 20;
		visionRange = 8;
		texture = {x = 6, y = 2, color = Colors.red };
		
		init = function(self, properties)
			for k,v in ipairs(properties) do print(v) end
			print(properties["name"])
			print(" " .. properties.x .. "  " .. properties.y)
			vars = self.vars
			vars.x = properties.x-- or 4
			vars.y = properties.y-- or 4
			self.defaultSpeed = properties.speed or 30
			
		end;
		
		
		update = function(self)
			
			costs = function(nodes)
				
				node = NodeCost.new(4, 4)
				node.cost = 100
				nodes:add(node)
				
			end
		
			
			player = world:findEntity(function(e)
				if e.category == "player" then return true end
				return false
			end)
			
			distance = world:getDistance(self, player)
			
			if self:getDestination() == player then
				if distance > 10 then self:guideTo(world:getTile(self.vars.x, self.vars.y), costs) end
				
			elseif distance < 8 then
				self:guideTo(player) 
				
			else
				self:guideTo(world:getTile(self.vars.x, self.vars.y), costs)
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