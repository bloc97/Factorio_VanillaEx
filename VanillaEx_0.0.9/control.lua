require "defines"
require "util"
require "control_math"
require "control_entity"
require "control_generator"
require "control_nature"

script.on_init(function() gameInit() end)
script.on_load(function() gameLoad() end)
script.on_event(defines.events.on_tick, function() gameTick() end)

function gameInit()
	setSettings()
end

function gameLoad()
	if global.p_gun == nil then -- If loaded old save with old version of VanillaEx.
			setSettings()
			print("VanillaEx: Initialising recipes.")
	
		elseif global.p_gun == enable_guns and global.p_vec == enable_vehicles_civilian and global.p_vem == enable_vehicles_military and global.p_def == enable_defense and global.p_ene == enable_energy then
			print("VanillaEx: Settings not changed.")
	
		elseif global.p_gun ~= enable_guns or global.p_vec ~= enable_vehicles_civilian or global.p_vem ~= enable_vehicles_military or global.p_def ~= enable_defense or global.p_ene ~= enable_energy then
			readSettings()
			setSettings()
			print("VanillaEx: Settings changed, reloading recipes.")
	
		else
			game.players[1].print("Something went wrong!")
			print("Something went wrong!")
	end
end

function gameTick()
	--[[if (game.tick % 10) == 0 then
		getTide()
	end
	updateDv()]]
if global.generator ~= nil then
	if global.generator.tidal ~= nil then checkGenerators(global.generator.tidal) end
	if global.generator.wind ~= nil then checkGenerators(global.generator.wind) end
end
end

script.on_event(defines.events.on_built_entity, function(event) buildEntity(event) end)

--script.on_event(defines.events.on_preplayer_mined_item, function(event) mineEntity(event) end)

function setSettings()
	global.p_gun = enable_guns
	global.p_vec = enable_vehicles_civilian
	global.p_vem = enable_vehicles_military
	global.p_def = enable_defense
	global.p_ene = enable_energy
end

function readSettings()
	for i, player in ipairs(game.players) do 
		player.force.reset_recipes() 
		player.force.reset_technologies()
	end
end




