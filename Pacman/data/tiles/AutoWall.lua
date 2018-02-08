AutoWall = Class:new({
	
	type = "tile",
	category = "wall",
	isPhysical = true,
	
	texture = {x = 4, y = 3; color = Colors.blue}
})

function AutoWall.getProperties()
	
	return {
		color = Colors.blue
	}
	
end

function AutoWall:init()
	
	local x = self.handle.x
	local y = self.handle.y
	
	self.handle:setColor(self.properties.color)
	
	self:updateGFX()
	
	if self.isAutoWall(x+1, y) then world:getTile(x+1, y).self:updateGFX() end
	if self.isAutoWall(x-1, y) then world:getTile(x-1, y).self:updateGFX() end
	if self.isAutoWall(x, y+1) then world:getTile(x, y+1).self:updateGFX() end
	if self.isAutoWall(x, y-1) then world:getTile(x, y-1).self:updateGFX() end
	if self.isAutoWall(x+1, y+1) then world:getTile(x+1, y+1).self:updateGFX() end
	if self.isAutoWall(x-1, y+1) then world:getTile(x-1, y+1).self:updateGFX() end
	if self.isAutoWall(x+1, y-1) then world:getTile(x+1, y-1).self:updateGFX() end
	if self.isAutoWall(x-1, y-1) then world:getTile(x-1, y-1).self:updateGFX() end

end

function AutoWall.isAutoWall(x, y)

	local width = world.width
	local height = world.height
	
	if x >= 0 and x < width and y >= 0 and y < height then
		tile = world:getTile(x, y)
		if tile ~= nil and tile.self.name == "AutoWall" then
			return true
		end
	end
	return false
end

function AutoWall:updateGFX()

	local x = self.handle.x
	local y = self.handle.y
	
	local width = world.width
	local height = world.height

	
	local tileL = self.isAutoWall(x-1, y)
	local tileR = self.isAutoWall(x+1, y)
	local tileT = self.isAutoWall(x, y-1)
	local tileB = self.isAutoWall(x, y+1)
	
	local tileLT = self.isAutoWall(x-1, y-1)
	local tileRT = self.isAutoWall(x+1, y-1)
	local tileLB = self.isAutoWall(x-1, y+1)
	local tileRB = self.isAutoWall(x+1, y+1)
	
	
	local amount = 0
	
	if tileL then amount = amount+1 end
	if tileR then amount = amount+1 end
	if tileT then amount = amount+1 end
	if tileB then amount = amount+1 end
	
	if amount == 1 then
		if tileL or tileR then self.handle:setTexture(5, 8) --Hor
		elseif tileT or tileB then self.handle:setTexture(6, 8) --Ver
		end
	elseif amount == 2 then
		if tileL and tileT then --LT
			self.handle:setTexture(2, 9)
		elseif tileR and tileT then --RT
			self.handle:setTexture(15, 8)
		elseif tileL and tileB then --LB
			self.handle:setTexture(12, 8)
		elseif tileR and tileB then --RB
			self.handle:setTexture(9, 8)
		elseif tileL and tileR then --Hor
			self.handle:setTexture(5, 8)
		elseif tileT and tileB then --Ver
			self.handle:setTexture(6, 8)
		end
	elseif amount == 3 then
		if not tileL or not tileR then self.handle:setTexture(6, 8)
		elseif not tileT or not tileB then self.handle:setTexture(5, 8)
		end
	elseif amount == 4 then
		if not tileLT then self.handle:setTexture(2, 9) --LT
		elseif not tileRT then self.handle:setTexture(15, 8) --RT
		elseif not tileLB then self.handle:setTexture(12, 8) --LB
		elseif not tileRB then self.handle:setTexture(9, 8) --RB
		end
	end
end

return AutoWall