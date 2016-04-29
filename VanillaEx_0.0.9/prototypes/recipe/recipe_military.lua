recipe_military={
---- Tanks
{result="tank-flame", -- Note in my case, result name and recipe name are the same!
energy=0.5, -- Energy required to craft
ingredients={{"engine-unit", 16},{"steel-plate", 50},{"iron-gear-wheel", 15},{"advanced-circuit", 5},{"flame-thrower", 4}},
},
{result="tank-arty",energy=0.5,
ingredients={{"engine-unit", 10},{"steel-plate", 50},{"iron-gear-wheel", 30},{"advanced-circuit", 10},},
},
{result="tank-auto",energy=0.5,
ingredients={{"engine-unit", 18},{"steel-plate", 50},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-armour",energy=0.5,
ingredients={{"engine-unit", 14},{"iron-plate", 30},{"steel-plate", 20},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-truck",energy=0.5,
ingredients={{"engine-unit", 12},{"iron-plate", 40},{"iron-gear-wheel", 10},},
},
{result="tank-flame-ammo",energy=1,
ingredients={{"flame-thrower-ammo", 2},{"iron-plate", 1},},
},
{result="autocannon-shell",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 1},},
},
{result="explosive-autocannon-shell",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="cannon-shell-arty",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 2},},
},
{result="explosive-cannon-shell-arty",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="flakcannon-shell",energy=8,
ingredients={{"steel-plate", 2},{"plastic-bar", 2},{"explosives", 5},},
},
--{result="car-amphi",energy=0.5,
--ingredients={{"engine-unit", 10},{"iron-plate", 30},{"iron-gear-wheel", 40},},
--},
--{result="seaplane_u1",energy=0.5,
--ingredients={{"engine-unit", 10},{"iron-plate", 30},{"iron-gear-wheel", 40},},
--},
{result="tank-mb",
energy=0.5, 
ingredients={{"engine-unit", 26},{"steel-plate", 100},{"iron-gear-wheel", 50},{"processing-unit", 10},},
},
{result="mb-apds",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 1},},
},
{result="mb-heat",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 3},},
},
{result="mb-he",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 4},},
},
---- Guns
{result="hollow-bullet-magazine",
energy=3,
ingredients={{"copper-plate", 2},{"iron-plate", 2}},
},
{result="incendiary-bullet-magazine",energy=5,
ingredients={{"copper-plate", 5},{"coal", 2}},
},
{result="explosive-bullet-magazine",energy=8,
ingredients={{"copper-plate", 5},{"steel-plate", 1},{"explosives", 2}},
},
{result="machine-gun",energy=8,
ingredients={{"iron-gear-wheel", 20},{"copper-plate", 10},{"iron-plate", 15}},
},
{result="assault-gun",energy=5,
ingredients={{"iron-gear-wheel", 15},{"copper-plate", 10},{"iron-plate", 10}},
},
{result="gatling-gun",energy=10,
ingredients={{"iron-gear-wheel", 40},{"copper-plate", 15},{"iron-plate", 15},{"engine-unit", 1}},
},
}

recipe_military[0]=#recipe_military

local i
for i=1,recipe_military[0] do

data:extend(
{
  {
    type = "recipe",
    name = recipe_military[i].result,
    enabled = false,
    energy_required = recipe_military[i].energy,
    ingredients = recipe_military[i].ingredients,
    result = recipe_military[i].result
  },

}
)
end
