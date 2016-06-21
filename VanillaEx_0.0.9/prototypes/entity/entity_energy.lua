data:extend(
  {

    {
      type = "solar-panel",
      name = "high-density-solar",
      icon = iconpath.."high-density-solar.png",
      flags = {"placeable-neutral", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "high-density-solar"},
      max_health = 100,
      corpse = "big-remnants",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      energy_source =
      {
        type = "electric",
        usage_priority = "solar"
      },
      picture =
      {
        filename = modname.."/graphics/entity/solar-panel/dense-solar.png",
        priority = "high",
        width = 104,
        height = 96
      },
      production = "120kW"
    },
    {
      type = "solar-panel",
      name = "stacked-density-solar",
      icon = iconpath.."stacked-density-solar.png",
      flags = {"placeable-neutral", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "stacked-density-solar"},
      max_health = 100,
      corpse = "big-remnants",
      collision_box = {{-1.4, -1.4}, {1.4, 1.4}},
      selection_box = {{-1.5, -1.5}, {1.5, 1.5}},
      energy_source =
      {
        type = "electric",
        usage_priority = "solar"
      },
      picture =
      {
        filename = modname.."/graphics/entity/solar-panel/stacked-solar.png",
        priority = "high",
        width = 104,
        height = 96
      },
      production = "200kW"
    },

    {
      type = "accumulator",
      name = "accumulator2",
      icon = modname.."/graphics/icons/accumulator2.png",
      flags = {"placeable-neutral", "player-creation"},
      minable = {hardness = 0.2, mining_time = 0.5, result = "accumulator2"},
      max_health = 150,
      corpse = "medium-remnants",
      collision_box = {{-0.9, -0.9}, {0.9, 0.9}},
      selection_box = {{-1, -1}, {1, 1}},
      energy_source =
      {
        type = "electric",
        buffer_capacity = "15MJ",
        usage_priority = "terciary",
        input_flow_limit = "500kW",
        output_flow_limit = "500kW"
      },
      picture =
      {
        filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator.png",
        priority = "extra-high",
        width = 124,
        height = 103,
        shift = {0.7, -0.2}
      },
      charge_animation =
      {
        filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator-charge-animation.png",
        width = 138,
        height = 135,
        line_length = 8,
        frame_count = 24,
        shift = {0.482, -0.638},
        animation_speed = 0.5
      },
      charge_cooldown = 30,
      charge_light = {intensity = 0.3, size = 7},
      discharge_animation =
      {
        filename = modname.."/graphics/entity/basic-accumulator/basic-accumulator-discharge-animation.png",
        width = 147,
        height = 128,
        line_length = 8,
        frame_count = 24,
        shift = {0.395, -0.525},
        animation_speed = 0.5
      },
      discharge_cooldown = 60,
      discharge_light = {intensity = 0.7, size = 7},
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/accumulator-working.ogg",
          volume = 1
        },
        idle_sound = {
          filename = "__base__/sound/accumulator-idle.ogg",
          volume = 0.4
        },
        max_sounds_per_type = 5
      },
    },

    {
      type = "generator",
      name = "tidal-generator",
      icon = toicon("tidal-generator"),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "tidal-generator"},
      max_health = 100,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.012,
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
      fluid_box =
      {
        base_area = 1,
        pipe_connections =
        {},

      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      horizontal_animation =
      {
        filename = toentity("tidal-generator").."tidal-generator_a.png",
        width = 131,
        height = 130,
        frame_count = 4,
        line_length = 4,
        shift = {0.8, 0.2}
      },
      vertical_animation =
      {
        filename = toentity("tidal-generator").."tidal-generator_a.png",
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
    },

    {
      type = "generator",
      name = "wind-generator",
      icon = toicon("wind-generator"),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "wind-generator"},
      max_health = 100,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.012,
      resistances =
      {
        {
          type = "physical",
          percent = 10
        },
        {
          type = "fire",
          percent = 5
        }
      },
      collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
      selection_box = {{-1.5, -5}, {1.5, 1}},
      fluid_box =
      {
        base_area = 1,
        pipe_connections =
        {},

      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      horizontal_animation =
      {
        filename = toentity("wind-generator").."wind-generator_a.png",
        width = 230,
        height = 200,
        frame_count = 3,
        line_length = 3,
        shift = {1.5, -1.5}
      },
      vertical_animation =
      {
        filename = toentity("wind-generator").."wind-generator_a.png",
        width = 230,
        height = 200,
        frame_count = 3,
        line_length = 3,
        shift = {1.5, -1.5}
      },
      smoke =
      {

      },
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
    },

    {
      type = "generator",
      name = "wind-generator2",
      icon = toicon("wind-generator2"),
      flags = {"placeable-neutral","player-creation"},
      minable = {mining_time = 1, result = "wind-generator2"},
      max_health = 100,
      corpse = "big-remnants",
      effectivity = 1,
      fluid_usage_per_tick = 0.024,
      resistances =
      {
        {
          type = "physical",
          percent = 20
        },
        {
          type = "fire",
          percent = 15
        }
      },
      collision_box = {{-0.6, -0.6}, {0.6, 0.6}},
      selection_box = {{-1.5, -5}, {1.5, 1}},
      fluid_box =
      {
        base_area = 1,
        pipe_connections =
        {},

      },
      energy_source =
      {
        type = "electric",
        usage_priority = "primary-output"
      },
      --[[horizontal_animation ={

		layers={

			{

			stripes = {

						{

						filename = toentity("wind-generator").."wind-generator2_a1.png",

						width_in_frames = 4,

						height_in_frames = 4,

						},

						{

						filename = toentity("wind-generator").."wind-generator2_a2.png",

						width_in_frames = 4,

						height_in_frames = 4,

						},



					},

			width = 380,

			height = 360,

			direction_count = 1,

			frame_count = 32,

			max_advance = 1,

			shift = {1, -1}

			},}},

		vertical_animation ={

		layers=

			{{

			stripes = {

						{

						filename = toentity("wind-generator").."wind-generator2_a1.png",

						width_in_frames = 4,

						height_in_frames = 4,

						},

						{

						filename = toentity("wind-generator").."wind-generator2_a2.png",

						width_in_frames = 4,

						height_in_frames = 4,

						},



					},

			width = 380,

			height = 360,

			direction_count = 1,

			frame_count = 32,

			max_advance = 1,

			shift = {1, -1}

			},}},	]]

      horizontal_animation =
      {
        filename = toentity("wind-generator").."wind-generator2_a.png",
        width = 380,
        height = 360,
        frame_count = 15,
        line_length = 5,
        shift = {2, -2}
      },
      vertical_animation =
      {
        filename = toentity("wind-generator").."wind-generator2_a.png",
        width = 380,
        height = 360,
        frame_count = 15,
        line_length = 5,
        shift = {2, -2}
      },

      smoke =
      {

      },
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
    },

    {
      type = "fluid",
      name = "water_speed",
      default_temperature = 0,
      max_temperature = 100,
      heat_capacity = "1KJ",
      base_color = {r=0, g=0.34, b=0.6},
      flow_color = {r=0.7, g=0.7, b=0.7},
      icon = toicon("wave"),
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
    },

    {
      type = "fluid",
      name = "wind",
      default_temperature = 0,
      max_temperature = 100,
      heat_capacity = "1KJ",
      base_color = {r=0, g=0.34, b=0.6},
      flow_color = {r=0.7, g=0.7, b=0.7},
      icon = toicon("wind"),
      order = "a[fluid]-x",
      pressure_to_speed_ratio = 0.4,
      flow_to_energy_ratio = 0.59,
    },

  })
