global={}
game={}
game.players={}
game.tick=0

for i=1,maxplayers do
  game.players[i]={}
  game.players[i].force={}
  game.players[i].force.reset_recipes = function() modprint("Recipes Reloaded for Player "..i) end
  game.players[i].force.reset_technologies = function() modprint("Technologies Reloaded for Player "..i) end
  apiprint("Player '"..i.."' Spawned.")
end


function placeentity(name) -- "Places an entity in the virtual "factorio"
  local event={}
  event.created_entity={}
  event.created_entity.valid=true
  event.created_entity.name=name
  event.created_entity.fluidbox={}
  apiprint("Entity '"..name.."' Spawned.")
  return event
end
