require "defines"
require "util"
require "control"

script.on_event(defines.events.on_tick, function(event)
  if (game.tick % 30) == 0 then
    update_tide()
    check_generators()
  end

end)

script.on_event(defines.events.on_built_entity, function(event)
  if event.created_entity.name == "tidal-gen" then
    local tidal_gen = event.created_entity
    if global.tidal_gen == nil
    then global.tidal_gen = {}
    end
    table.insert(global.tidal_gen, tidal_gen)
    tidal_gen.fluidbox[1] = {type="water", amount=100, temperature=(game.tides*2500)}
  end
end)

script.on_event(defines.events.on_robot_built_entity, function(event)
  if event.created_entity.name == "tidal-gen" then
    local tidal_gen = event.created_entity
    if global.tidal_gen == nil
    then global.tidal_gen = {}
    end
    table.insert(global.tidal_gen, tidal_gen)
    tidal_gen.fluidbox[1] = {type="water", amount=100, temperature=(game.tides*2500)}
  end
end)

function check_generators()
  if global.tidal_gen ~= nil then
    for k,gen in pairs(global.tidal_gen) do
      if k % 125 == game.tick % 125 then
        if gen.valid then
          if gen.fluidbox[1] ~= nil then
            local pot = gen.fluidbox[1]
            pot.amount = 10
            pot.temperature = 100*(game.tides)
            gen.fluidbox[1] = pot
          else table.remove(global.tidal_gen, k)
          end
        end
      end
    end
  end
end



function update_tide()
  local tides = fabs(fsine(game.tick))
  game.tides = tides
  game.players[1].print(game.tides)
end

function fsine(x) -- Quick approximation of sine function (Instead of using math.sin)
  local y = (4*x*(180-x)) / (40500-x*(180-x))
  return y
end

function fabs(x) -- Quick absolute value (Instead of using math.abs)
  if x >=0 then
    y = x
elseif x < 0 then
  y = -1*x
end
return y
end
