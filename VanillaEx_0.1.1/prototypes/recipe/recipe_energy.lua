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
{result="sonic-transport-belt",
energy=0.5,
ingredients={
      {"iron-gear-wheel", 20},
      {"express-transport-belt", 2},
      {"coolant", 1}
	  }
},
{result="sonic-underground-belt",
energy=0.5,
result_count = 2,
ingredients={
      {"iron-gear-wheel", 160},
      {"express-underground-belt", 4},
      {"coolant", 2}
	  }
},
{result="sonic-splitter",
energy=2,
ingredients={
      {"express-splitter", 2},
      {"iron-gear-wheel", 20},
      {"processing-unit", 4},
      {"coolant", 1}
	  }
},
{result="logistic-chest-storage-large",
ingredients={
      {"logistic-chest-storage", 4},
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
    result = recipe_energy[i].result,
	result_count = recipe_energy[i].result_count
  }

}
)
end