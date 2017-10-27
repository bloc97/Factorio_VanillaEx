

local heavywater = {
    type = "recipe",
    name = "heavywater-extraction",
    energy_required = 10,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"water-barrel", 1}},
    icon = toicon("heavywater-extraction"),
    subgroup = "raw-material",
    order = "hz[fusion-processing]-a[heavywater-extraction]",
    results =
    {
      {
        name = "heavywater-barrel",
        probability = 0.0055,
        amount = 1
      },
      {
        name = "empty-barrel",
        probability = 0.9945,
        amount = 1
      }
    }
  }
  
local superheavywater = {
    type = "recipe",
    name = "superheavywater-extraction",
    energy_required = 100,
    enabled = false,
    category = "centrifuging",
    ingredients = {{"heavywater-barrel", 1},{"uranium-235", 50}},
    icon = toicon("superheavywater-extraction"),
    subgroup = "raw-material",
    order = "hz[fusion-processing]-b[superheavywater-extraction]",
    results =
    {
      {
        name = "superheavywater-barrel",
        amount = 1
      },
      {
        name = "uranium-235",
        amount = 50
      }
    }
  }
  
local air = {
    type = "recipe",
    name = "air-collection",
    category = "chemistry",
    enabled = false,
    energy_required = 20,
    ingredients =
    {
    },
    results=
    {
      {type="fluid", name="oxygen", amount=20},
      {type="fluid", name="nitrogen", amount=80}
    },
    main_product= "",
    icon = toicon("air-collection"),
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-i[air-collection]",
    crafting_machine_tint =
    {
      primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
      secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
      tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
    }
  }
    
local electrolysis = {
    type = "recipe",
    name = "electrolysis",
    category = "chemistry",
    enabled = false,
    energy_required = 50,
    ingredients =
    {
      {type="fluid", name="water", amount=60}
    },
    results=
    {
      {type="fluid", name="oxygen", amount=20},
      {type="fluid", name="hydrogen", amount=40}
    },
    main_product= "",
    icon = toicon("electrolysis"),
    subgroup = "fluid-recipes",
    order = "b[fluid-chemistry]-h[electrolysis]",
    crafting_machine_tint =
    {
      primary = {r = 0.785, g = 0.406, b = 0.000, a = 0.000}, -- #c8670000
      secondary = {r = 0.795, g = 0.805, b = 0.605, a = 0.000}, -- #cacd9a00
      tertiary = {r = 0.835, g = 0.551, b = 0.000, a = 0.000}, -- #d48c0000
    }
  }
  
local oxidizer = {
    type = "recipe",
    name = "oxidizer",
    category = "chemistry",
    energy_required = 4,
    enabled = false,
    ingredients =
    {
      {type="fluid", name="oxygen", amount=50},
      {type="fluid", name="hydrogen", amount=50},
      {type="item", name="coal", amount=1},
      {type="item", name="plastic-bar", amount=1}
    },
    results=
    {
      {type="item", name="oxidizer", amount=1}
    },
    crafting_machine_tint =
    {
      primary = {r = 1.000, g = 0.659, b = 0.000, a = 0.000}, -- #ffa70000
      secondary = {r = 0.812, g = 1.000, b = 0.000, a = 0.000}, -- #cfff0000
      tertiary = {r = 0.960, g = 0.806, b = 0.000, a = 0.000}, -- #f4cd0000
    }
}

local firstaid = {
    type = "recipe",
    name = "first-aid-kit",
    energy_required = 4,
    enabled = false,
    category = "crafting-with-fluid",
    ingredients =
    {
      {"plastic-bar", 4},
      {"oxidizer", 1},
      {type="fluid", name="water", amount=10},
    },
    result= "first-aid-kit"
  }

local coolant = {
    type = "recipe",
    name = "coolant",
    category = "crafting-with-fluid",
    energy_required = 10,
    ingredients =
    {
      {type="fluid", name= "nitrogen", amount = 100}
    },
    result = "coolant",
    enabled = false
}
local hydrogenfuel = {
    type = "recipe",
    name = "hydrogen-fuel-cell",
    category = "chemistry",
    enabled = false,
    energy_required = 10,
    ingredients =
    {
      {"iron-plate", 10},
      {"coolant", 2},
      {type="fluid", name="heavywater", amount=250},
      {type="fluid", name="superheavywater", amount=250}
    },
    result = "hydrogen-fuel-cell",
    result_count = 10
}

data:extend({
heavywater, superheavywater, electrolysis, air, oxidizer, coolant, hydrogenfuel, firstaid
})