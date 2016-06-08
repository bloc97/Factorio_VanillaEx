require "defines"
require "util"
require "control_mod"

script.on_init(function() gameInit() end)
script.on_load(function() gameLoad() end)
script.on_event(defines.events.on_tick, function() gameTick() end)
script.on_event(defines.events.on_built_entity, function(event) buildEntity(event) end)
script.on_event(defines.events.on_robot_built_entity, function(event) buildEntity(event) end)