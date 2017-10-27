recipe_energy={

---- Energy
{result="high-density-solar",
energy=10,
ingredients={{"steel-plate", 8},{"copper-plate", 8},{"advanced-circuit", 10}},
},
{result="stacked-density-solar",
energy=2,
ingredients={{"steel-plate", 4},{"high-density-solar", 1},{"solar-panel", 1},{"processing-unit", 2}},
},
{result="accumulator2",
energy=5,
ingredients={{"accumulator", 2},{"advanced-circuit", 2}},
},
{result="capacitor",
energy=5,
ingredients={{"iron-plate", 4},{"copper-plate", 4},{"coolant", 5},{"electronic-circuit", 2}},
},
{result="fuel-cell",
energy=10,
ingredients={{"iron-plate", 2},{"copper-plate", 4},{"oxidizer", 5},{"electronic-circuit", 2}},
},
{result="boiler-electric",
energy=0.5,
ingredients={{"boiler", 1},{"copper-plate", 4},{"electronic-circuit", 8}},
},
{result="wind-generator",
energy=8,
ingredients={{"steel-plate", 16},{"copper-plate", 8},{"advanced-circuit", 8}},
},
{result="tidal-generator",
energy=8,
ingredients={{"steel-plate", 10},{"copper-plate", 16},{"advanced-circuit", 8}},
},
{result="radioisotope-generator",
energy=5,
ingredients={{"steel-plate", 8},{"copper-plate", 8},{"advanced-circuit", 20},{"uranium-fuel-cell", 5}},
},
{result="low-power-heat-exchanger",
ingredients={{"steel-plate", 10}, {"copper-plate", 20}, {"pipe", 10}},
},
{result="thermal-generator",
energy=4,
ingredients={
      {"steel-plate", 100},
      {"advanced-circuit", 50},
      {"copper-plate", 200}}
},
{result="oxygen-furnace",
energy=5,
ingredients={
      {"steel-furnace", 1},
      {"copper-plate", 20}}
},
{result="fusion-reactor",
energy=5,
ingredients={
      {"concrete", 2000},
      {"steel-plate", 1000},
      {"processing-unit", 500},
      {"copper-plate", 1000}
	  }
},


}

recipe_energy[0]=#recipe_energy

local i
for i=1,recipe_energy[0] do

data:extend(
{
  {
    type = "recipe",
    name = recipe_energy[i].result,
    enabled = false,
    energy_required = recipe_energy[i].energy,
    ingredients = recipe_energy[i].ingredients,
    result = recipe_energy[i].result
  },

}
)
end