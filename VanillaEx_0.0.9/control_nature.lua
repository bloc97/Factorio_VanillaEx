-- 1 Day is 25000 ticks
-- Tide period of the moon (x2) is slightly longer due to its motion and rotation of planet. (About 1/28th of a day longer if lunar month is 28 days)
-- Tide period of sun is exactly the day length for simplicity's sake. 
--(don't want to start calculating exactly how many seconds the solar days lags behind (longer than) the rotational period of planet...)

tide_period_moon=14000 -- First number is in ticks, divided by 180 for mod function.
period_moon=350000

function getTide()
local moon_stage=(game.tick/(tide_period_moon/180))%180
local sun_stage=(game.tick/(period_moon/180))%180

local tides_moon = fabs(fsine(moon_stage))
local tides_sun = 0.4*fabs(fsine(sun_stage)) -- Calculates how sun affects tides

if (game.tick%(tide_period_moon*2)) <= (tide_period_moon) then
	return fzero((tides_moon - tides_sun))/1.6
else 
	return fzero((tides_moon - tides_sun))
end

--game.players[1].print(game.tick)
--game.players[1].print(global.tides)
end