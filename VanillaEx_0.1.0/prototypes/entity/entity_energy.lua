
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
stackedsolar.production = "200kW"

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

local electricboiler = util.table.deepcopy(data.raw["boiler"]["boiler"])
electricboiler.name = "boiler-electric"
electricboiler.minable.result = "boiler-electric"
electricboiler.energy_consumption = "1.8MW"
electricboiler.energy_source = 
    {
      type = "electric",
      usage_priority = "secondary-input"
    }

local windgenerator = {
      type = "generator",
      name = "wind-generator",
      icon = toicon("wind-generator"),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "wind-generator"},
      max_health = 400,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.05,
	  maximum_temperature = 15.71,
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
        production_type = "input-output"
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
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 1,
    }

local tidegenerator = {
      type = "generator",
      name = "tidal-generator",
      icon = toicon("tidal-generator"),
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
        production_type = "input-output"
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
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 1,
    }

data:extend({
hisolar, stackedsolar, hiaccumulator, electricboiler, windgenerator, wind, tidegenerator, tide
})