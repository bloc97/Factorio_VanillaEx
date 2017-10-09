require "util"


script.on_init(function()
global.load = true
end)

script.on_load(function()
global.load = true
end)


script.on_event(defines.events.on_tick, function(event)

		if global.load == true then
		for i, player in ipairs(game.players) do 
		player.force.reset_recipes() 
		player.force.reset_technologies()
		end
		global.load = false
		end
		
end)