-- 1 Day is 25000 ticks
-- Tide period of the moon (x2) is slightly longer due to its motion and rotation of planet. (About 1/28th of a day longer if lunar month is 28 days)
-- Tide period of sun is exactly the day length for simplicity's sake. 
--(don't want to start calculating exactly how many seconds the solar days lags behind (longer than) the rotational period of planet...)

ExNature={
wind=math.random();
iswindgoal=false;
windgoal=0;

getTide = function(gametick)

local tide_period_moon=14000 -- First number is in ticks, divided by 180 for mod function.
local period_moon=350000

local moon_stage=(gametick/(tide_period_moon/180))%180
local sun_stage=(gametick/(period_moon/180))%180

local tides_moon = ExFmath.abs(ExFmath.sine(moon_stage))
local tides_sun = 0.4*ExFmath.abs(ExFmath.sine(sun_stage)) -- Calculates how sun affects tides

if (gametick%(tide_period_moon*2)) <= (tide_period_moon) then -- Checks whether it is first or second tide.
	return ExFmath.zero((tides_moon - tides_sun))/1.6
else 
	return ExFmath.zero((tides_moon - tides_sun))
end

--game.players[1].print(game.tick)
--game.players[1].print(global.tides)
end;

getRealTide = function(gametick)
return ExFmath.interval(ExNature.getTide(gametick),0,1)
end;

getWind = function()
return ExNature.wind
end;

getRealWind = function()
return ExFmath.interval(ExNature.wind,0,1)
end;

setWind = function(wind)
ExNature.wind=wind
end;

addWind = function(inc)
ExNature.setWind(ExNature.getWind()+inc)
end;


updateFlucWind = function()
if not ExNature.iswindgoal then
local offset = math.random(-100,100)*0.0001
ExNature.addWind(offset)

else
  if not ExFmath.checkdiff(ExNature.wind,ExNature.windgoal,0.05) then
  ExNature.iswindgoal=false
  elseif ExNature.wind>ExNature.windgoal then
  ExNature.addWind(-0.02*math.random())
  elseif ExNature.wind<ExNature.windgoal then
  ExNature.addWind(0.02*math.random())
  else
  ExNature.iswindgoal=false
  end
end
end;

updateWind = function()
if not ExNature.iswindgoal then
ExNature.iswindgoal=true
ExNature.windgoal=(math.random()*1.5)-0.5
end
end


}
