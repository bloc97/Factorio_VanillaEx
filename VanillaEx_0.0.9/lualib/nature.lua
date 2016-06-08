-- 1 Day is 25000 ticks
-- Tide period of the moon (x2) is slightly longer due to its motion and rotation of planet. (About 1/28th of a day longer if lunar month is 28 days)
-- Tide period of sun is exactly the day length for simplicity's sake. 
--(don't want to start calculating exactly how many seconds the solar days lags behind (longer than) the rotational period of planet...)

nature={}
tide_period_moon=14000 -- First number is in ticks, divided by 180 for mod function.
period_moon=350000

function nature.getTide(gametick)
local moon_stage=(gametick/(tide_period_moon/180))%180
local sun_stage=(gametick/(period_moon/180))%180

local tides_moon = fmath.abs(fmath.sine(moon_stage))
local tides_sun = 0.4*fmath.abs(fmath.sine(sun_stage)) -- Calculates how sun affects tides

if (gametick%(tide_period_moon*2)) <= (tide_period_moon) then -- Checks whether it is first or second tide.
	return fmath.zero((tides_moon - tides_sun))/1.6
else 
	return fmath.zero((tides_moon - tides_sun))
end

--game.players[1].print(game.tick)
--game.players[1].print(global.tides)
end