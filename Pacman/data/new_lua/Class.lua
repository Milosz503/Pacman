Class = {}

function Class:new(object)
	
	object = object or {}
	setmetatable(object, self)
	self.__index = self
	return object

end

function createEntity(name, properties)

	newEntity = entities[name]:new();

	properties = properties or {};
	mt = {__index = {}}
	if newEntity.getProperties ~= nil then
		mt.__index = newEntity.getProperties()
	end
	
	setmetatable(properties, mt)
	
	handle = world:createEntityHandle(newEntity, newEntity.category)
	
	
end


