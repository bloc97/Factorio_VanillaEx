require "lualib.ExFmath"
require "lualib.ExEntity"
require "lualib.ExGame"
require "lualib.ExNature"

-- Separated the "mod" portion from the Factorio API to facilitate the creation of a mock API.

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
  if global.generator ~= nil then
    if global.generator.tidal ~= nil then ExGame.checkGenerators(global.generator.tidal) end
    if global.generator.wind ~= nil then ExGame.checkGenerators(global.generator.wind) end
  end
  if game.tick%60==0 then ExNature.updateFlucWind() end
  if game.tick%6000==3000 then ExNature.updateWind() end
end


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
