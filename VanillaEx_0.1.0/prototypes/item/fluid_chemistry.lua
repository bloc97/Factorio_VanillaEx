local nitrogen = {
    type = "fluid",
    name = "nitrogen",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=0.72},
    flow_color = {r=0.9, g=0.9, b=0.92},
    icon = toicon("nitrogen"),
    order = "a[fluid]-za",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}
	
local oxygen = {
    type = "fluid",
    name = "oxygen",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.7, g=0.7, b=1},
    flow_color = {r=0.9, g=0.9, b=1},
    icon = toicon("oxygen"),
    order = "a[fluid]-zb",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}
	
local hydrogen = {
    type = "fluid",
    name = "hydrogen",
    default_temperature = 25,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0.9, g=0.9, b=9},
    flow_color = {r=1, g=1, b=1},
    icon = toicon("hydrogen"),
    order = "a[fluid]-zc",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}
	
	
local heavywater = {
    type = "fluid",
    name = "heavywater",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.24, b=0.5},
    flow_color = {r=0.6, g=0.6, b=0.7},
    icon = toicon("heavywater"),
    order = "a[fluid]-a[water]-b",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}

local firstaid = {
    type = "capsule",
    name = "first-aid-kit",
    icon = toicon("first-aid"),
    flags = {"goes-to-quickbar"},
    subgroup = "capsule",
    capsule_action =
    {
      type = "use-on-self",
      attack_parameters =
      {
        type = "projectile",
        ammo_category = "capsule",
        cooldown = 30,
        range = 0,
        ammo_type =
        {
          category = "capsule",
          target_type = "position",
          action =
          {
            type = "direct",
            action_delivery =
            {
              type = "instant",
              target_effects =
              {
                type = "damage",
                damage = {type = "physical", amount = -200}
              }
            }
          }
        }
      }
    },
    order = "h[raw-fish]-a",
    stack_size = 100
  }

local oxidizer = {
    type = "item",
    name = "oxidizer",
    icon = toicon("oxidizer"),
    flags = {"goes-to-main-inventory"},
    fuel_category = "oxidizer",
    fuel_value = "8MJ",
    subgroup = "raw-material",
    order = "j[acid-canister]-b[oxidizer]",
    stack_size = 50
}

local coolant = {
    type = "item",
    name = "coolant",
    icon = toicon("coolant"),
    flags = {"goes-to-main-inventory"},
    subgroup = "intermediate-product",
    order = "j[acid-canister]-a[coolant]",
    stack_size = 100
}

local hydrogenfuel = {
    type = "item",
    name = "hydrogen-fuel-cell",
    icon = toicon("hydrogen-fuel-cell"),
    flags = {"goes-to-main-inventory"},
    fuel_category = "thermonuclear",
    fuel_value = "1.2TJ",
    subgroup = "intermediate-product",
    order = "s[fusion-processing]-a[hydrogen-fuel-cell]",
    stack_size = 50
}

local superheavywater = {
    type = "fluid",
    name = "superheavywater",
    default_temperature = 15,
    max_temperature = 100,
    heat_capacity = "1KJ",
    base_color = {r=0, g=0.44, b=0.5},
    flow_color = {r=0.6, g=0.7, b=0.6},
    icon = toicon("superheavywater"),
    order = "a[fluid]-a[water]-c",
    pressure_to_speed_ratio = 0.4,
    flow_to_energy_ratio = 0.59
}

data:extend({
nitrogen, oxygen, heavywater, superheavywater, hydrogen, oxidizer, coolant, hydrogenfuel, firstaid
})