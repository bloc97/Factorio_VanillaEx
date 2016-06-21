require "defines"
require "util"
require "lualib.ExControl"

script.on_init(function() gameInit() end)
script.on_load(function() gameLoad() end)
script.on_event(defines.events.on_tick, function() gameTick() end)
script.on_event(defines.events.on_built_entity, function(event) ExEntity.build(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) ExEntity.build(event) end)
