recipe_military={
---- Tanks
{result="tank-arty",
energy=0.5, -- Note in my case, result name and recipe name are the same!
ingredients={{"engine-unit", 10},{"steel-plate", 50},{"iron-gear-wheel", 30},{"advanced-circuit", 10},},
},
{result="tank-auto",
energy=0.5,
ingredients={{"engine-unit", 18},{"steel-plate", 50},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-armour",
energy=0.5,
ingredients={{"engine-unit", 14},{"iron-plate", 30},{"steel-plate", 20},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-truck",
energy=0.5,
ingredients={{"engine-unit", 12},{"iron-plate", 40},{"iron-gear-wheel", 10},},
},
{result="autocannon-shell",
energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 1},},
},
{result="explosive-autocannon-shell",
energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="cannon-shell-arty",
energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 2},},
},
{result="explosive-cannon-shell-arty",
energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="flakcannon-shell",
energy=8,
ingredients={{"steel-plate", 2},{"plastic-bar", 2},{"explosives", 5},},
},
--{result="car-amphi",energy=0.5,
--ingredients={{"engine-unit", 10},{"iron-plate", 30},{"iron-gear-wheel", 40},},
--},
--{result="seaplane_u1",energy=0.5,
--ingredients={{"engine-unit", 10},{"iron-plate", 30},{"iron-gear-wheel", 40},},
--},
{result="tank-mb",
energy=0.5,  -- Energy required to craft
ingredients={{"engine-unit", 26},{"steel-plate", 100},{"iron-gear-wheel", 50},{"processing-unit", 10},},
},
{result="mb-apds",
energy=6,
ingredients={{"steel-plate", 6},{"plastic-bar", 2},{"advanced-circuit", 1},{"uranium-cannon-shell", 1},},
},
{result="mb-heat",
energy=6,
ingredients={{"steel-plate", 6},{"plastic-bar", 2},{"explosive-uranium-cannon-shell", 1},},
},
{result="mb-he",
energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 4},},
},
---- Guns
{result="hollow-bullet-magazine",
energy=3,
ingredients={{"copper-plate", 2},{"iron-plate", 2}},
},
{result="incendiary-bullet-magazine",
energy=5,
ingredients={{"copper-plate", 5},{"coal", 2}},
},
{result="explosive-bullet-magazine",
energy=8,
ingredients={{"copper-plate", 5},{"steel-plate", 1},{"explosives", 1}},
},
{result="machine-gun",
energy=8,
ingredients={{"iron-gear-wheel", 20},{"copper-plate", 10},{"iron-plate", 15}},
},
{result="assault-gun",
energy=5,
ingredients={{"iron-gear-wheel", 15},{"copper-plate", 10},{"iron-plate", 10}},
},
{result="gatling-gun",
energy=10,
ingredients={{"iron-gear-wheel", 40},{"copper-plate", 15},{"iron-plate", 15},{"engine-unit", 1}},
},
{result="acid-canister",
energy=5,
category = "chemistry",
ingredients={{type="fluid", name="sulfuric-acid", amount=10},{"copper-plate", 1},{"iron-plate", 1}},
},
{result="corrosive-bullet-magazine",
energy=3,
ingredients={{"firearm-magazine", 1},{"copper-plate", 1},{"acid-canister", 1}},
},
{result="corrosive-cannon-shell",
energy=8,
ingredients={{"cannon-shell", 1},{"copper-plate", 1},{"acid-canister", 1}},
},
{result="corrosive-shotgun-magazine",
energy=6,
ingredients={{"shotgun-shell", 1},{"copper-plate", 2},{"acid-canister", 2}},
},
{result="corrosive-rocket",
energy=8,
ingredients={{"rocket", 1},{"acid-canister", 2}},
},
{
result="thermonuclear-weapon",
energy = 100,
ingredients={
      {"atomic-bomb", 1},
      {"heavywater-barrel", 50},
      {"superheavywater-barrel", 50},
	  }
},
{
result="atomic-artillery-shell",
energy = 10,
ingredients={
      {"atomic-bomb", 1},
      {"radar", 1}
	  }
},
{
result="thermonuclear-artillery-shell",
energy = 10,
ingredients={
      {"thermonuclear-weapon", 1},
      {"radar", 1}
	  }
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
		category = recipe_military[i].category,
		energy_required = recipe_military[i].energy,
		ingredients = recipe_military[i].ingredients,
		result = recipe_military[i].result
	  },

	}
)
end

data:extend(
	{
	  {
		type = "recipe",
		name = "corrosive-mine",
		enabled = false,
		energy_required = 5,
		ingredients = {{"steel-plate", 1},{"acid-canister", 2}},
		result = "corrosive-mine",
		result_count = 4
	  },

	}
)