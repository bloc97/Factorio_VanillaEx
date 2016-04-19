data:extend(
{
 {type = "ammo",name = "tank-flame-ammo",
    icon = iconpath.."tank-flame-ammo.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "tank-flame-thrower",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          {
            type = "flame-thrower",
            explosion = "flame-thrower-explosion",
            direction_deviation = 0.08,
            speed_deviation = 0.1,
            starting_frame_deviation = 0.07,
            projectile_starting_speed = 0.4,
            starting_distance = 0.6,
          }
        }
      }
    },
    magazine_size = 200,
    subgroup = "ammo",
    order = "e[flame-thrower]-a",
    stack_size = 100
  },
 {type = "ammo",name = "autocannon-shell",
    icon = iconpath.."autocannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "autocannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "autocannon-projectile",
          starting_speed = 1.5,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 25,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
	magazine_size = 5,
    subgroup = "ammo",
    order = "d[cannon-shell]-a[basic]-a",
    stack_size = 100
  },
 {type = "ammo",name = "explosive-autocannon-shell",
    icon = iconpath.."explosive-autocannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "autocannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-autocannon-projectile",
          starting_speed = 1.5,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 25,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
	magazine_size = 5,
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-a",
    stack_size = 100
  },
  {type = "ammo",name = "flakcannon-shell",
    icon = iconpath.."flakcannon-shell.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "flakcannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
		repeat_count = 2,
        action_delivery =
        {
          type = "projectile",
          projectile = "flakcannon-projectile",
          starting_speed = 3.5,
          direction_deviation = 0.1,
          range_deviation = 0.5,
          max_range = 30,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
	magazine_size = 5,
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-c",
    stack_size = 100
  },
 {type = "ammo",name = "cannon-shell-arty",
    icon = iconpath.."cannon-shell-arty.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "arty-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "cannon-arty-projectile",
          starting_speed = 0.5,
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
        }
      }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "d[cannon-shell]-a[basic]-b",
    stack_size = 50
  },
 {type = "ammo",name = "explosive-cannon-shell-arty",
    icon = iconpath.."explosive-cannon-shell-arty.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "arty-shell",
      target_type = "position",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "explosive-cannon-arty-projectile",
          starting_speed = 0.5,
          source_effects =
          {
              type = "create-explosion",
              entity_name = "explosion-gunshot"
          },
        }
      }
    },
    magazine_size = 1,
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-b",
    stack_size = 50
  },
  
  
  
    {
    type = "ammo",
    name = "mb-apds",
    icon = iconpath.."APDS.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "mb-cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "mb-apds-projectile",
          starting_speed = 1.2,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 60,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-c",
    stack_size = 100
  },
  {
    type = "ammo",
    name = "mb-heat",
    icon = iconpath.."HEAT.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "mb-cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "mb-heat-projectile",
          starting_speed = 0.8,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 70,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-d",
    stack_size = 100
  },
    {
    type = "ammo",
    name = "mb-he",
    icon = iconpath.."HE.png",
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "mb-cannon-shell",
      target_type = "direction",
      action =
      {
        type = "direct",
        action_delivery =
        {
          type = "projectile",
          projectile = "mb-he-projectile",
          starting_speed = 0.7,
          direction_deviation = 0.1,
          range_deviation = 0.1,
          max_range = 60,
          source_effects =
          {
            type = "create-explosion",
            entity_name = "explosion-gunshot"
          },
        }
      },
    },
    subgroup = "ammo",
    order = "d[cannon-shell]-b[explosive]-f",
    stack_size = 100
  },
  
  
}
)



for i=1,gunsdat_item_ammo[0] do


data:extend(
{
{
    type = "ammo",
    name = gunsdat_item_ammo[i].name,
    icon = iconpath..gunsdat_item_ammo[i].icon,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
			  gunsdat_item_ammo[i].damage,
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                
              }
            }
          }
        }
      }
    },
    magazine_size = gunsdat_item_ammo[i].size,
    subgroup = "ammo",
    order = gunsdat_item_ammo[i].order,
    stack_size = gunsdat_item_ammo[i].stack
  },})
end