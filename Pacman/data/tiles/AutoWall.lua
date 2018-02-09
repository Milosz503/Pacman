AutoWall = Class:new({
	
	type = "tile",
	category = "wall",
	isPhysical = true,
	
	texture = {x = 4, y = 3; color = Colors.blue}
})

function AutoWall.getProperties()
	
	return {
		color = Colors.blue,
		textureX = -1,
		textureY = -1
	}
	
end

function AutoWall:firstInit()

	local x = self.handle.x
	local y = self.handle.y
	
	
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

function AutoWall:init()
	
	
	if self.properties.textureX ~= -1 and self.properties.textureY ~= -1 then
		self.handle:setTexture(self.properties.textureX, self.properties.textureY)
	else
		self:firstInit()
	end
	
	self.handle:setColor(self.properties.color)

end

function AutoWall.isAutoWall(x, y)

	local width = world.width
	local height = world.height
	
	if x >= 0 and x < width and y >= 0 and y < height then
		tile = world:getTile(x, y)
		if tile ~= nil and tile.self.name == "AutoWall" then
			return tile
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
	
	local textureX = self.texture.x;
	local textureY = self.texture.y;
	
	
	
	local amount = 0
	
	if tileL then amount = amount+1 end
	if tileR then amount = amount+1 end
	if tileT then amount = amount+1 end
	if tileB then amount = amount+1 end
	
	if amount == 1 then
		if tileL or tileR then textureX = 5; textureY = 8--Hor
		elseif tileT or tileB then textureX = 6; textureY = 8 --Ver
		end
	elseif amount == 2 then
		if tileL and tileT then --LT
			textureX = 2; textureY = 9
		elseif tileR and tileT then --RT
			textureX = 15; textureY = 8
		elseif tileL and tileB then --LB
			textureX = 12; textureY = 8
		elseif tileR and tileB then --RB
			textureX = 9; textureY = 8
		elseif tileL and tileR then --Hor
			textureX = 5; textureY = 8
		elseif tileT and tileB then --Ver
			textureX = 6; textureY = 8
		end
	elseif amount == 3 then
		if not tileL or not tileR then textureX = 6; textureY = 8
		elseif not tileT or not tileB then textureX = 5; textureY = 8
		end
	elseif amount == 4 then
		if not tileLT then textureX = 2; textureY = 9 --LT
		elseif not tileRT then textureX = 15; textureY = 8 --RT
		elseif not tileLB then textureX = 12; textureY = 8 --LB
		elseif not tileRB then textureX = 9; textureY = 8 --RB
		end
	end
	
	self.properties.textureX = textureX
	self.properties.textureY = textureY
	
	self.handle:setTexture(textureX, textureY)
end

return AutoWall