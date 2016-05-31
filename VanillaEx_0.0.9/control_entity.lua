function buildEntity(event)
	local entity = event.created_entity
	local entitytype = checkEntity(entity.name)
	
	if entitytype.category=="generator" then
	createGenerator(entity,entitytype)
	end
end

--[[function mineEntity(event)
	game.players[1].print(event.name)
	local entity = event.entity
	local entitytype = checkEntity(entity.name)
	
	if entitytype.category=="generator" then
	entity.health=0
	end
end]]


function checkEntity(name)
	if name=="tidal-generator" then
	return {category="generator",subcategory="tidal"}
	
	elseif name=="wind-generator" or name=="wind-generator2" then
	return {category="generator",subcategory="wind"}
	
	else
	return {}
	end
end

function createTableGenerators(entitytype)
	if global.generator == nil then
		global.generator = {}
	end
	
	if global.generator.tidal == nil and entitytype.subcategory=="tidal" then
		global.generator.tidal = {}
	end
	
	if global.generator.wind == nil and entitytype.subcategory=="wind" then
		global.generator.wind = {}
	end
end

function createGenerator(entity,entitytype)
	if entitytype.subcategory == "tidal" then
		createTableGenerators(entitytype)
		entity.fluidbox[1] = {type="water_speed", amount=100, temperature=(global.tides*100)}
		table.insert(global.generator.tidal, entity)
	end
	if entitytype.subcategory == "wind" then
		createTableGenerators(entitytype)
		entity.fluidbox[1] = {type="wind", amount=100, temperature=(global.tides*100)}
		table.insert(global.generator.wind, entity)
	end
end