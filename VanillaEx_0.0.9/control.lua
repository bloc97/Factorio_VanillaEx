require "defines"
require "util"

-- 1 Day is 25000 ticks
-- Tide period of the moon is slightly longer due to its motion. (About 1/28th of a day if lunar month is 28 days)
-- Tide period of sun is exactly the day length for simplicity's sake. 
--(don't want to start calculating exactly how many seconds the solar days lags behind (longer than) the rotational period of planet...)

tide_period_moon=14000 -- First number is in ticks, divided by 180 for mod function.
period_moon=350000

script.on_init(function()
global.load = true
end)

script.on_load(function()
global.load = true
end)

script.on_event(defines.events.on_tick, function(event)
		if (game.tick % 10) == 0 then
			update_tide()
		end
		check_tidal_generators()
		
		if global.load == true then
		for i, player in ipairs(game.players) do 
		player.force.reset_recipes() 
		player.force.reset_technologies()
		end
		global.load = false
		end
		
end)

script.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "tidal-generator" then		
		local tidal_gen = event.created_entity
		if global.tidal_gen == nil
			then global.tidal_gen = {}
		end
		table.insert(global.tidal_gen, tidal_gen)
		tidal_gen.fluidbox[1] = {type="water_speed", amount=100, temperature=(global.tides*100)}
	end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
	if event.created_entity.name == "tidal-generator" then		
		local tidal_gen = event.created_entity
		if global.tidal_gen == nil
			then global.tidal_gen = {}
		end
		table.insert(global.tidal_gen, tidal_gen)
		tidal_gen.fluidbox[1] = {type="water_speed", amount=100, temperature=(global.tides*100)}
	end
end)

function update_tide()
local moon_stage=(game.tick/(tide_period_moon/180))%180
local sun_stage=(game.tick/(period_moon/180))%180

local tides_moon = fabs(fsine(moon_stage,0))
local tides_sun = 0.4*fabs(fsine(sun_stage,0)) -- Calculates how sun affects tides
if (game.tick%(tide_period_moon*2)) <= (tide_period_moon) then
global.tides = fzero((tides_moon - tides_sun))/1.6
else 
global.tides = fzero((tides_moon - tides_sun))
end
--game.players[1].print(game.tick)
--game.players[1].print(global.tides)
end


function check_tidal_generators()
   if global.tidal_gen ~= nil then
  	    for k,gen in pairs(global.tidal_gen) do
      		if k % 10 == game.tick % 10 then
				if gen.valid then
         			if gen.fluidbox[1] ~= nil then 
         					local pot = gen.fluidbox[1]
							pot.amount = 10				
							pot.temperature = 100*(global.tides)
							gen.fluidbox[1] = pot				
					else table.remove(global.tidal_gen, k)
					end				
				end
			end
		end
	end
end









-- MATH FUNCTIONS


function fsine(i,phi) -- Quick approximation of sine function (Instead of using math.sin)
local x = i+phi
local y = (4*x*(180-x)) / (40500-x*(180-x))
return y
end

function fsquare(x) -- Quick square wave
if (x%180)<=90 then
y=0
end
if (x%180)>90 then
y=1
end
end

function fabs(x) -- Quick absolute value (Instead of using math.abs)
if x >=0 then
y = x
else
y = -1*x
end
return y
end

function fzero(x)
if x < 0 then
y = 0
else
y = x
end
return y
end