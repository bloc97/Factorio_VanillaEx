data:extend(
{
	{
    type = "gun",
    name = "tank-cannon-flame",
    icon = "__base__/graphics/icons/flame-thrower.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "e[flame-thrower]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "tank-flame-thrower",
      cooldown = 1,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.2,
      range = 25,
      cyclic_sound =
      {
        begin_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-start.ogg",
            volume = 1.0
          }
        },
        middle_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-mid.ogg",
            volume = 1.0
          }
        },
        end_sound =
        {
          {
            filename = "__base__/sound/fight/flamethrower-end.ogg",
            volume = 1.0
          }
        }
      }
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "tank-rocket",
    icon = iconpath.."tank-rocket.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "d[rocket-launcher]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "rocket",
      movement_slow_down_factor = 0.8,
      cooldown = 120,
      projectile_creation_distance = 0.6,
      range = 60,
      projectile_center = {-0.17, 0},
      sound =
      {
        {
          filename = "__base__/sound/fight/rocket-launcher.ogg",
          volume = 0.7
        }
      }
    },
    stack_size = 1
  },
  {
    type = "gun",
    name = "tank-mb-cannon",
    icon = iconpath.."tank-mb-cannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "mb-cannon-shell",
      cooldown = 80,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 50,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
  {
    type = "gun",
    name = "tank-autocannon",
    icon = iconpath.."tank-autocannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "autocannon-shell",
      cooldown = 30,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 25,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 5
  },
  {
    type = "gun",
    name = "tank-flakcannon",
    icon = iconpath.."tank-flakcannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "flakcannon-shell",
      cooldown = 24,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 30,
      sound = 
      {
        {
          filename = modname.."/sound/fight/heavy-flak.ogg",
          volume = 1.0
        },
		},
    },
    stack_size = 5
  },
  
    {
    type = "gun",
    name = "car-gatling-gun",
    icon = iconpath.."gatling-gun.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "a[basic-clips]-b[submachine-gun]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = 0.4,
      movement_slow_down_factor = 0.95,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.5,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 1.6,
      range = 18,
      sound = make_light_gunshot_sounds(),
    },
    stack_size = 1
  },
  
    {
    type = "gun",
    name = "tank-cannon-arty",
    icon = iconpath.."tank-artycannon.png",
    flags = {"goes-to-main-inventory", "hidden"},
    subgroup = "gun",
    order = "z[tank]-a[cannon]",
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "arty-shell",
      cooldown = 180,
      movement_slow_down_factor = 0,
      projectile_creation_distance = 1.6,
      projectile_center = {-0.15625, -0.07812},
      range = 70,
      sound =
      {
        {
          filename = "__base__/sound/fight/tank-cannon.ogg",
          volume = 1.0
        }
      },
    },
    stack_size = 1
  },
  
  
}
)



local i
for i=1,gunsdat_item_guns[0] do
data:extend(
{

	{
    type = "gun",
    name = gunsdat_item_guns[i].name,
    icon = iconpath..gunsdat_item_guns[i].icon,
    flags = {"goes-to-main-inventory"},
    subgroup = "gun",
    order = gunsdat_item_guns[i].order,
    attack_parameters =
    {
      type = "projectile",
      ammo_category = "bullet",
      cooldown = gunsdat_item_guns[i].cooldown,
      movement_slow_down_factor = gunsdat_item_guns[i].slowdown,
      shell_particle =
      {
        name = "shell-particle",
        direction_deviation = 0.1,
        speed = 0.1,
        speed_deviation = 0.03,
        center = {0, 0.1},
        creation_distance = -0.5,
        starting_frame_speed = 0.4,
        starting_frame_speed_deviation = 0.1
      },
      projectile_creation_distance = 1.125,
      range = gunsdat_item_guns[i].range,
      sound = make_light_gunshot_sounds(),
    },
    stack_size = 1
  },
  

}
)
end