require "util"
require "perlin"


script.on_event(defines.events.on_built_entity, function(event)

		
	if event.created_entity.name == "wind-generator" then
		if global.windGenerators == nil then
			global.windGenerators = {}
		end
		
		table.insert(global.windGenerators, event.created_entity)
		
	elseif event.created_entity.name == "tidal-generator" then
		if global.tidalGenerators == nil then
			global.tidalGenerators = {}
		end
		
		table.insert(global.tidalGenerators, event.created_entity)
	end

end)

script.on_event(defines.events.on_robot_built_entity, function(event)

	if event.created_entity.name == "wind-generator" then
		if global.windGenerators == nil then
			global.windGenerators = {}
		end
		
		table.insert(global.windGenerators, event.created_entity)
		
	elseif event.created_entity.name == "tidal-generator" then
		if global.tidalGenerators == nil then
			global.tidalGenerators = {}
		end
		
		table.insert(global.tidalGenerators, event.created_entity)
	end
	
end)

local offset = 0.5051543
script.on_event(defines.events.on_tick, function(event)
	
	local currentTick = event.tick
	
	if global.windGenerators ~= nil then
		
		local windGenerators = global.windGenerators
		
		local fluid = {}
		fluid.type = "wind"
		
		local noise = perlin:noise(currentTick * 0.0001, currentTick * 0.0001, currentTick * 0.0001) + offset
		
		if noise < 0 then
			noise = 0
		elseif noise > 1 then
			noise = 1
		end
		
		local t1 = noise + 15
		--local t2 = ((perlin:noise(currentTick * 0.0002, currentTick * 0.0002, currentTick * 0.0002) + offset) / divider * 90 - 20) / 2
		--local t3 = ((perlin:noise(currentTick * 0.0004, currentTick * 0.0004, currentTick * 0.0004) + offset) / divider * 90 - 20) / 4
		--local t4 = ((perlin:noise(currentTick * 0.001, currentTick * 0.001, currentTick * 0.001) + offset) / divider * 90 - 20   ) / 10
		--fluid.temperature = (t1 + t2 + t3 + t4) / 1.85
		fluid.temperature = t1
		fluid.amount = noise * 100
		
		for i=1, #windGenerators do
			if windGenerators[i] ~= nil then
				if windGenerators[i].valid then
					windGenerators[i].fluidbox[1] = fluid
				else
					windGenerators[i] = nil
				end
			end
		end
	end
		
	if global.tidalGenerators ~= nil then
		
		local tidalGenerators = global.tidalGenerators
		
		local fluid = {}
		fluid.type = "tide"
		
		local func = (math.sin(currentTick * 8 / 25000) + math.cos(currentTick * 2.1 * 8 / 25000)) / 2
		
		if func < 0 then
			func = 0
		elseif func > 1 then
			func = 1
		end
		
		local t1 = func
		
		fluid.temperature = t1 + 14.87
		fluid.amount = func * 100
		
		for i=1, #tidalGenerators do 
			if tidalGenerators[i] ~= nil then
				if tidalGenerators[i].valid then
					tidalGenerators[i].fluidbox[1] = fluid
				else
					tidalGenerators[i] = nil
				end
			end
		end
		
	end
	

end)

