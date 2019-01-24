
data.raw["solar-panel"]["solar-panel"].fast_replaceable_group = "solar-panel"
data.raw["accumulator"]["accumulator"].fast_replaceable_group = "accumulator"

local hisolar = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
hisolar.name = "high-density-solar"
hisolar.icon = iconpath.."high-density-solar.png"
hisolar.minable.result = "high-density-solar"
hisolar.picture.filename = modname.."/graphics/entity/solar-panel/dense-solar.png"
hisolar.production = "120kW"

local stackedsolar = util.table.deepcopy(data.raw["solar-panel"]["solar-panel"])
stackedsolar.name = "stacked-density-solar"
stackedsolar.icon = iconpath.."stacked-density-solar.png"
stackedsolar.minable.result = "stacked-density-solar"
stackedsolar.picture.filename = modname.."/graphics/entity/solar-panel/stacked-solar.png"
stackedsolar.production = "240kW"

local hiaccumulator = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
hiaccumulator.name = "accumulator2"
hiaccumulator.icon = iconpath.."accumulator2.png"
hiaccumulator.minable.result = "accumulator2"
hiaccumulator.energy_source.buffer_capacity = "15MJ"
hiaccumulator.energy_source.input_flow_limit = "500kW"
hiaccumulator.energy_source.output_flow_limit = "500kW"
hiaccumulator.picture.filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator.png"
hiaccumulator.charge_animation.filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png"
hiaccumulator.discharge_animation.filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png"

local capacitor = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
capacitor.name = "capacitor"
capacitor.icon = iconpath.."capacitor.png"
capacitor.minable.result = "capacitor"
capacitor.energy_source.buffer_capacity = "800kJ"
capacitor.energy_source.input_flow_limit = "3.1MW"
capacitor.energy_source.output_flow_limit = "3.1MW"
capacitor.picture.filename = modname.."/graphics/entity/basic-accumulator/capacitor.png"
capacitor.charge_animation.filename = modname.."/graphics/entity/basic-accumulator/capacitor-charge-animation.png"
capacitor.discharge_animation.filename = modname.."/graphics/entity/basic-accumulator/capacitor-discharge-animation.png"

local fuelcell = util.table.deepcopy(data.raw["accumulator"]["accumulator"])
fuelcell.name = "fuel-cell"
fuelcell.icon = iconpath.."fuel-cell.png"
fuelcell.minable.result = "fuel-cell"
fuelcell.energy_source.buffer_capacity = "60MJ"
fuelcell.energy_source.input_flow_limit = "60kW"
fuelcell.energy_source.output_flow_limit = "120kW"
fuelcell.picture.filename = modname.."/graphics/entity/basic-accumulator/fuel-cell.png"
fuelcell.charge_animation.filename = modname.."/graphics/entity/basic-accumulator/fuel-cell-charge-animation.png"
fuelcell.discharge_animation.filename = modname.."/graphics/entity/basic-accumulator/fuel-cell-discharge-animation.png"

local electricboiler = util.table.deepcopy(data.raw["boiler"]["boiler"])
electricboiler.name = "boiler-electric"
electricboiler.minable.result = "boiler-electric"
electricboiler.energy_consumption = "1.8MW"
electricboiler.energy_source = 
    {
      type = "electric",
      usage_priority = "secondary-input"
    }
	
local rtg = util.table.deepcopy(data.raw["electric-energy-interface"]["electric-energy-interface"])
rtg.name = "radioisotope-generator"
rtg.minable.result = "radioisotope-generator"
rtg.enable_gui = false
rtg.allow_copy_paste = false
rtg.energy_source =
    {
      type = "electric",
      buffer_capacity = "40kJ",
      usage_priority = "primary-output",
      input_flow_limit = "0kW",
      output_flow_limit = "20kW"
    }

rtg.energy_production = "40kW"
rtg.picture.tint = {r=1, g=1, b=1, a=1}
rtg.picture.filename = modname.."/graphics/entity/basic-accumulator/rtgaccumulator.png"

local lowpowerheatexchanger = util.table.deepcopy(data.raw["boiler"]["heat-exchanger"])
lowpowerheatexchanger.name = "low-power-heat-exchanger"
lowpowerheatexchanger.energy_consumption = "7.2MW"
lowpowerheatexchanger.target_temperature = 165

local fusion = util.table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
fusion.name = "fusion-reactor"
fusion.minable.result = "fusion-reactor"
fusion.consumption = "1GW"
fusion.burner.fuel_category = "thermonuclear"
fusion.burner.burnt_inventory_size = 0
fusion.working_light_picture.filename = modname.."/graphics/entity/fusion-reactor/reactor-lights-color.png"
fusion.working_light_picture.hr_version.filename = modname.."/graphics/entity/fusion-reactor/hr-reactor-lights-color.png"
fusion.light = {intensity = 1.2, size = 18.1, shift = {0.0, 0.0}, color = {r = 1, g = 0.1, b = 0.2}}
fusion.heat_buffer.max_temperature = 8000
fusion.heat_buffer.specific_heat = "10GJ"
fusion.heat_buffer.max_transfer = "4GW"

local logisticx2 = util.table.deepcopy(data.raw["logistic-container"]["logistic-chest-storage"])
logisticx2.name = "logistic-chest-storage-large"
logisticx2.minable.result = "logistic-chest-storage-large"
logisticx2.minable.mining_time = logisticx2.minable.mining_time * 4
logisticx2.max_health = logisticx2.max_health * 4
logisticx2.corpse = "medium-remnants"
logisticx2.collision_box = {{-0.35 * 2, -0.35 * 2}, {0.35 * 2, 0.35 * 2}}
logisticx2.selection_box = {{-0.5 * 2, -0.5 * 2}, {0.5 * 2, 0.5 * 2}}
logisticx2.inventory_size = 48 * 4
logisticx2.circuit_wire_max_distance = 9 + 2
logisticx2.picture =
    {
      filename = modname.."/graphics/entity/logistic-chest/logistic-chest-storage-x2.png",
      priority = "extra-high",
      width = 38 * 2,
      height = 32 * 2,
      shift = {0.09375 * 2, 0}
    }



require("transport-belt-pictures")



local sonicbelt = util.table.deepcopy(data.raw["transport-belt"]["express-transport-belt"])
sonicbelt.name = "sonic-transport-belt"
sonicbelt.icon = toicon("sonic-transport-belt")
sonicbelt.max_health = 180
sonicbelt.minable.result = "sonic-transport-belt"
sonicbelt.speed = 0.125
sonicbelt.animations.filename = modname.."/graphics/entity/sonic-transport-belt/sonic-transport-belt.png"
sonicbelt.animations.hr_version.filename = modname.."/graphics/entity/sonic-transport-belt/hr-sonic-transport-belt.png"

sonicbelt.belt_horizontal = sonic_belt_horizontal -- specified in transport-belt-pictures.lua
sonicbelt.belt_vertical = sonic_belt_vertical
sonicbelt.ending_top = sonic_belt_ending_top
sonicbelt.ending_bottom = sonic_belt_ending_bottom
sonicbelt.ending_side = sonic_belt_ending_side
sonicbelt.starting_top = sonic_belt_starting_top
sonicbelt.starting_bottom = sonic_belt_starting_bottom
sonicbelt.starting_side = sonic_belt_starting_side



local sonicundergroundbelt = util.table.deepcopy(data.raw["underground-belt"]["express-underground-belt"])
sonicundergroundbelt.name = "sonic-underground-belt"
sonicundergroundbelt.icon = toicon("sonic-underground-belt")
sonicundergroundbelt.max_health = 180
sonicundergroundbelt.minable.result = "sonic-underground-belt"
sonicundergroundbelt.speed = 0.125
sonicundergroundbelt.max_distance = 11
sonicundergroundbelt.belt_horizontal = sonic_belt_horizontal -- specified in transport-belt-pictures.lua
sonicundergroundbelt.belt_vertical = sonic_belt_vertical
sonicundergroundbelt.ending_top = sonic_belt_ending_top
sonicundergroundbelt.ending_bottom = sonic_belt_ending_bottom
sonicundergroundbelt.ending_side = sonic_belt_ending_side
sonicundergroundbelt.starting_top = sonic_belt_starting_top
sonicundergroundbelt.starting_bottom = sonic_belt_starting_bottom
sonicundergroundbelt.starting_side = sonic_belt_starting_side
sonicundergroundbelt.structure.direction_in.sheet.filename = modname.."/graphics/entity/sonic-underground-belt/sonic-underground-belt-structure.png"
sonicundergroundbelt.structure.direction_in.sheet.hr_version.filename = modname.."/graphics/entity/sonic-underground-belt/hr-sonic-underground-belt-structure.png"
sonicundergroundbelt.structure.direction_out.sheet.filename = modname.."/graphics/entity/sonic-underground-belt/sonic-underground-belt-structure.png"
sonicundergroundbelt.structure.direction_out.sheet.hr_version.filename = modname.."/graphics/entity/sonic-underground-belt/hr-sonic-underground-belt-structure.png"



local sonicsplitter = util.table.deepcopy(data.raw["splitter"]["express-splitter"])
sonicsplitter.name = "sonic-splitter"
sonicsplitter.icon = toicon("sonic-splitter")
sonicsplitter.max_health = 200
sonicsplitter.minable.result = "sonic-splitter"
sonicsplitter.speed = 0.125
sonicsplitter.belt_horizontal = sonic_belt_horizontal -- specified in transport-belt-pictures.lua
sonicsplitter.belt_vertical = sonic_belt_vertical
sonicsplitter.ending_top = sonic_belt_ending_top
sonicsplitter.ending_bottom = sonic_belt_ending_bottom
sonicsplitter.ending_side = sonic_belt_ending_side
sonicsplitter.starting_top = sonic_belt_starting_top
sonicsplitter.starting_bottom = sonic_belt_starting_bottom
sonicsplitter.starting_side = sonic_belt_starting_side
sonicsplitter.structure.north.filename = modname.."/graphics/entity/sonic-splitter/sonic-splitter-north.png"
sonicsplitter.structure.north.hr_version.filename = modname.."/graphics/entity/sonic-splitter/hr-sonic-splitter-north.png"
sonicsplitter.structure.east.filename = modname.."/graphics/entity/sonic-splitter/sonic-splitter-east.png"
sonicsplitter.structure.east.hr_version.filename = modname.."/graphics/entity/sonic-splitter/hr-sonic-splitter-east.png"
sonicsplitter.structure.south.filename = modname.."/graphics/entity/sonic-splitter/sonic-splitter-south.png"
sonicsplitter.structure.south.hr_version.filename = modname.."/graphics/entity/sonic-splitter/hr-sonic-splitter-south.png"
sonicsplitter.structure.west.filename = modname.."/graphics/entity/sonic-splitter/sonic-splitter-west.png"
sonicsplitter.structure.west.hr_version.filename = modname.."/graphics/entity/sonic-splitter/hr-sonic-splitter-west.png"





	

local thermal = util.table.deepcopy(data.raw["reactor"]["nuclear-reactor"])
thermal.name = "thermal-generator"
thermal.minable.result = "thermal-generator"
thermal.consumption = "20MW"
thermal.burner =
    {
      fuel_category = "chemical",
      effectivity = 0.7,
      fuel_inventory_size = 4,
      emissions = 0.07 / 6.5,
      smoke =
      {
        {
          name = "smoke",
          deviation = {0, 0},
          position = {0.1, -1.3},
          frequency = 4
        }
      }
    }
thermal.light = {intensity = 0.8, size = 9.9, shift = {0.0, 0.0}, color = {r = 0.9, g = 0.6, b = 0.2}}
thermal.heat_buffer.max_temperature = 300
thermal.heat_buffer.specific_heat = "50MJ"
thermal.heat_buffer.max_transfer = "1GW"
thermal.working_light_picture.filename = modname.."/graphics/entity/thermal-generator/reactor-lights-color.png"
thermal.working_light_picture.hr_version.filename = modname.."/graphics/entity/thermal-generator/hr-reactor-lights-color.png"


local oxygenfurnace = util.table.deepcopy(data.raw["furnace"]["electric-furnace"])
oxygenfurnace.name = "oxygen-furnace"
oxygenfurnace.minable.result = "oxygen-furnace"
oxygenfurnace.energy_usage = "120kW"
oxygenfurnace.crafting_speed = 4
oxygenfurnace.energy_source = 
    {
      type = "burner",
      fuel_category = "oxidizer",
      effectivity = 1,
      usage_priority = "secondary-input",
	  fuel_inventory_size = 1,
      emissions = 0.005
    }
oxygenfurnace.working_visualisations[1].animation.filename = modname.."/graphics/entity/oxygen-furnace/oxygen-furnace-heater.png"
oxygenfurnace.working_visualisations[1].animation.hr_version.filename = modname.."/graphics/entity/oxygen-furnace/hr-oxygen-furnace-heater.png"








local windgenerator = {
      type = "generator",
      name = "wind-generator",
      icon = toicon("wind-generator"),
	  icon_size=32,
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "wind-generator"},
      max_health = 400,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.05,
	  maximum_temperature = 15.91,
      resistances =
      {
        {
          type = "physical",
          percent = 60
        },
        {
          type = "fire",
          percent = 15
        },
		{
		  type = "impact",
		  percent = 40
		}
      },
      collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
      selection_box = {{-1.5, -7}, {1.5, 0.5}},
      fluid_box =
      {
        base_area = 1,
        height = 1,
        base_level = -1,
		pipe_connections = {},
        production_type = "input-output",
		filter = "wind"
      },
	  fluid_input = {
		name = "wind",
		amount = 0.0
	  },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      horizontal_animation =
      {
        filename = toentity("renewables").."wind-generator.png",
        width = 380,
        height = 360,
        frame_count = 15,
        line_length = 5,
        shift = {3.25, -3.25}
      },
      vertical_animation =
      {
        filename = toentity("renewables").."wind-generator.png",
        width = 380,
        height = 360,
        frame_count = 15,
        line_length = 5,
        shift = {3.25, -3.25}
      },
      smoke = {},
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/train-wheels.ogg",
          volume = 0.6
        },
        match_speed_to_activity = true,
      },
      min_perceived_performance = 0.25,
      performance_to_sound_speedup = 0.2
    }
local wind = {
      type = "fluid",
      name = "wind",
      default_temperature = 15.36,
      max_temperature = 100,
      heat_capacity = "150KJ",
      base_color = {r=0, g=0.34, b=0.6},
      flow_color = {r=0.7, g=0.7, b=0.7},
      icon = toicon("wind"),
	  icon_size=32,
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 1,
      auto_barrel = false
    }

local tidegenerator = {
      type = "generator",
      name = "tidal-generator",
      icon = toicon("tidal-generator"),
	  icon_size=32,
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "tidal-generator"},
      max_health = 100,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.05,
	  maximum_temperature = 15.70,
      resistances =
      {
        {
          type = "physical",
          percent = 5
        }
      },
      collision_mask = {"ground-tile"},
      collision_box = {{-2.01, -2.01}, {2.01, 2.01}},
      selection_box = {{-1, -1}, {1, 1}},
	  fluid_input = {
		name = "tide",
		amount = 0.0
	  },
      fluid_box =
      {
        base_area = 1,
        height = 1,
        base_level = -1,
		pipe_connections = {},
        production_type = "input-output",
		filter = "tide"
      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      horizontal_animation =
      {
        filename = toentity("renewables").."tidal-generator.png",
        width = 131,
        height = 130,
        frame_count = 4,
        line_length = 4,
        shift = {0.8, 0.2}
      },
      vertical_animation =
      {
        filename = toentity("renewables").."tidal-generator.png",
        width = 131,
        height = 130,
        frame_count = 4,
        line_length = 4,
        shift = {0.8, 0.2}
      },
      smoke =
      {

      },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/boiler.ogg",
          volume = 1
        },
        match_speed_to_activity = true,
      },
      min_perceived_performance = 0.25,
      performance_to_sound_speedup = 0.2
    }
local tide = {
      type = "fluid",
      name = "tide",
      default_temperature = 14.87,
      max_temperature = 100,
      heat_capacity = "200KJ",
      base_color = {r=0, g=0.34, b=0.6},
      flow_color = {r=0.7, g=0.7, b=0.7},
      icon = toicon("wave"),
	  icon_size=32,
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 1,
      auto_barrel = false
    }

data:extend({
hisolar, stackedsolar, hiaccumulator, electricboiler, windgenerator, wind, tidegenerator, tide, thermal, lowpowerheatexchanger, rtg, oxygenfurnace, fusion, capacitor, fuelcell,
logisticx2, sonicbelt, sonicundergroundbelt, sonicsplitter
})