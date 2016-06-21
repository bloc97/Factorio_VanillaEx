
data:extend(
  {

    {
      type = "car",
      name = "seaplane_u1",
      icon = "__base__/graphics/icons/small-plane.png",
      flags = {"pushable", "placeable-neutral", "player-creation", "placeable-off-grid"},
      minable = {mining_time = 1, result = "seaplane_u1"},
      max_health = 300,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      energy_per_hit_point = 0.5,
      resistances =
      {
        {
          type = "fire",
          decrease = 10,
          percent = 10
        },
        {
          type = "physical",
          decrease = 10,
          percent = 5
        },
        {
          type = "impact",
          decrease = 20,
          percent = 15
        },
        {
          type = "explosion",
          decrease = 5,
          percent = 10
        },
        {
          type = "acid",
          decrease = 5,
          percent = 15
        }
      },
      collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
      selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
      collision_mask = nil,
      effectivity = 0.6,
      braking_power = "400kW",
      burner =
      {
        effectivity = 0.75,
        fuel_inventory_size = 2,
        smoke =
        {
          {
            name = "tank-smoke",
            deviation = {0.25, 0.25},
            frequency = 50,
            position = {0, 1.5},
            starting_frame = 0,
            starting_frame_deviation = 60
          }
        }
      },
      consumption = "600kW",
      terrain_friction_modifier = 0,
      friction = 0.0005,
      light =
      {
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {-0.6, -14},
          size = 2,
          intensity = 0.6
        },
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {0.6, -14},
          size = 2,
          intensity = 0.6
        }
      },
      animation =
      {
        layers =
        {
          {
            width = 220,
            height = 200,
            frame_count = 2,
            direction_count = 64,
            animation_speed=4,
            --shift = {-0.140625, -0.28125},
            shift = {0, 0},
            max_advance = 1,
            stripes =
            {
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_0.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_1.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_2.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_3.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_4.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_5.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_6.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_7.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
            }
          },
          {
            width = 220,
            height = 200,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            --shift = {0.59375, 0.328125},
            shift = {3, 3},
            max_advance = 1,
            stripes = util.multiplystripes(2,
              {

                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_8.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_9.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_10.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_11.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_4.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_5.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_6.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_7.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
              })
          }
        }
      },
      sound_no_fuel =
      {
        {
          filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
          volume = 0.6
        },
      },
      stop_trigger =
      {
        {
          type = "play-sound",
          sound =
          {
            {
              filename = "__base__/sound/car-breaks.ogg",
              volume = 0.6
            },
          }
        },
      },
      sound_minimum_speed = 0.15;
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/fight/tank-engine.ogg",
          volume = 0.6
        },
        activate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-start.ogg",
          volume = 0.6
        },
        deactivate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-stop.ogg",
          volume = 0.6
        },
        match_speed_to_activity = true,
      },
      open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.0035,
      tank_driving = true,
      weight = 15000,
      inventory_size = 16,
      guns = {},
    },

    {
      type = "car",
      name = "seaplane_u2",
      icon = "__base__/graphics/icons/small-plane.png",
      flags = {"pushable"},
      max_health = 300,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      energy_per_hit_point = 0.5,
      resistances =
      {
        {
          type = "fire",
          decrease = 10,
          percent = 10
        },
        {
          type = "physical",
          decrease = 10,
          percent = 5
        },
        {
          type = "impact",
          decrease = 20,
          percent = 15
        },
        {
          type = "explosion",
          decrease = 5,
          percent = 10
        },
        {
          type = "acid",
          decrease = 5,
          percent = 15
        }
      },
      collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
      selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
      collision_mask = {},
      effectivity = 0.6,
      braking_power = "400kW",
      burner =
      {
        effectivity = 0.75,
        fuel_inventory_size = 2,
        smoke =
        {
          {
            name = "tank-smoke",
            deviation = {0.25, 0.25},
            frequency = 50,
            position = {0, 1.5},
            starting_frame = 0,
            starting_frame_deviation = 60
          }
        }
      },
      consumption = "600kW",
      terrain_friction_modifier = 0,
      friction = 0.0005,
      light =
      {
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {-0.6, -14},
          size = 2,
          intensity = 0.6
        },
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {0.6, -14},
          size = 2,
          intensity = 0.6
        }
      },
      animation =
      {
        layers =
        {
          {
            width = 220,
            height = 200,
            frame_count = 2,
            direction_count = 64,
            animation_speed=4,
            --shift = {-0.140625, -0.28125},
            shift = {0, -5},
            max_advance = 1,
            stripes =
            {
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_0.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_1.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_2.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_3.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_4.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_5.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_6.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_7.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
            }
          },
          {
            width = 220,
            height = 200,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            --shift = {0.59375, 0.328125},
            shift = {0, 0.328125},
            max_advance = 1,
            stripes = util.multiplystripes(2,
              {

                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_0.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_1.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_2.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_3.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_4.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_5.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_6.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_7.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
              })
          }
        }
      },
      sound_no_fuel =
      {
        {
          filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
          volume = 0.6
        },
      },
      stop_trigger =
      {
        {
          type = "play-sound",
          sound =
          {
            {
              filename = "__base__/sound/car-breaks.ogg",
              volume = 0.6
            },
          }
        },
      },
      sound_minimum_speed = 0.15;
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/fight/tank-engine.ogg",
          volume = 0.6
        },
        activate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-start.ogg",
          volume = 0.6
        },
        deactivate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-stop.ogg",
          volume = 0.6
        },
        match_speed_to_activity = true,
      },
      open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.0035,
      tank_driving = true,
      weight = 15000,
      inventory_size = 16,
      guns = {},
    },
    {
      type = "car",
      name = "seaplane_u3",
      icon = "__base__/graphics/icons/small-plane.png",
      flags = {"pushable"},
      max_health = 300,
      corpse = "medium-remnants",
      dying_explosion = "medium-explosion",
      energy_per_hit_point = 0.5,
      resistances =
      {
        {
          type = "fire",
          decrease = 10,
          percent = 10
        },
        {
          type = "physical",
          decrease = 10,
          percent = 5
        },
        {
          type = "impact",
          decrease = 20,
          percent = 15
        },
        {
          type = "explosion",
          decrease = 5,
          percent = 10
        },
        {
          type = "acid",
          decrease = 5,
          percent = 15
        }
      },
      collision_box = {{-0.9, -1.3}, {0.9, 1.3}},
      selection_box = {{-0.9, -1.3}, {0.9, 1.3}},
      collision_mask = {},
      effectivity = 0.6,
      braking_power = "400kW",
      burner =
      {
        effectivity = 0.75,
        fuel_inventory_size = 2,
        smoke =
        {
          {
            name = "tank-smoke",
            deviation = {0.25, 0.25},
            frequency = 50,
            position = {0, 1.5},
            starting_frame = 0,
            starting_frame_deviation = 60
          }
        }
      },
      consumption = "600kW",
      terrain_friction_modifier = 0,
      friction = 0.0005,
      light =
      {
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {-0.6, -14},
          size = 2,
          intensity = 0.6
        },
        {
          type = "oriented",
          minimum_darkness = 0.3,
          picture =
          {
            filename = "__core__/graphics/light-cone.png",
            priority = "medium",
            scale = 2,
            width = 200,
            height = 200
          },
          shift = {0.6, -14},
          size = 2,
          intensity = 0.6
        }
      },
      animation =
      {
        layers =
        {
          {
            width = 220,
            height = 200,
            frame_count = 2,
            direction_count = 64,
            animation_speed=4,
            --shift = {-0.140625, -0.28125},
            shift = {0, -7},
            max_advance = 1,
            stripes =
            {
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_0.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_1.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_2.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_3.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_4.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_5.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_6.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
              {
                filename = modname.."/graphics/entity/seaplane/seaplane_base_7.png",
                width_in_frames = 2,
                height_in_frames = 8,
              },
            }
          },
          {
            width = 220,
            height = 200,
            frame_count = 2,
            draw_as_shadow = true,
            direction_count = 64,
            --shift = {0.59375, 0.328125},
            shift = {0, 0.328125},
            max_advance = 1,
            stripes = util.multiplystripes(2,
              {

                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_0.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_1.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_2.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_3.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_4.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_5.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_6.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
                {
                  filename = modname.."/graphics/entity/seaplane/seaplane_shadow_7.png",
                  width_in_frames = 1,
                  height_in_frames = 8,
                },
              })
          }
        }
      },
      sound_no_fuel =
      {
        {
          filename = "__base__/sound/fight/tank-no-fuel-1.ogg",
          volume = 0.6
        },
      },
      stop_trigger =
      {
        {
          type = "play-sound",
          sound =
          {
            {
              filename = "__base__/sound/car-breaks.ogg",
              volume = 0.6
            },
          }
        },
      },
      sound_minimum_speed = 0.15;
      vehicle_impact_sound =  { filename = "__base__/sound/car-metal-impact.ogg", volume = 0.65 },
      working_sound =
      {
        sound =
        {
          filename = "__base__/sound/fight/tank-engine.ogg",
          volume = 0.6
        },
        activate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-start.ogg",
          volume = 0.6
        },
        deactivate_sound =
        {
          filename = "__base__/sound/fight/tank-engine-stop.ogg",
          volume = 0.6
        },
        match_speed_to_activity = true,
      },
      open_sound = { filename = "__base__/sound/car-door-open.ogg", volume=0.7 },
      close_sound = { filename = "__base__/sound/car-door-close.ogg", volume = 0.7 },
      rotation_speed = 0.0035,
      tank_driving = true,
      weight = 15000,
      inventory_size = 16,
      guns = {},
    },
  }
)
