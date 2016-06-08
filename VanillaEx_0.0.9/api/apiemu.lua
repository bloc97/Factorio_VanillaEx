require "api.apifunc"
require "api.apiconfig"
require "api.gamehandler"
require "config"
require "control_mod"

-- Creates an mock API to test the mod's Control code without actually running factorio
api={}
api.tick=0
api.events=0

if isload==true then
  gameInit()
  enable_energy=samesettings
  gameLoad()
else gameInit()
end

while api.tick < gameduration do
  game.tick=api.tick
  api.tick =api.tick + 1
  
  
  for k,v in pairs(buildeventticks) do
  if game.tick == v then
  buildEntity(placeentity(buildeventname[k]))
  api.events=api.events+1
  end
  end
    
  if game.tick%tickprint==0 then
    print("Tick "..game.tick)
  end
  
  gameTick()

end

apiprint("Total Events: "..api.events)
