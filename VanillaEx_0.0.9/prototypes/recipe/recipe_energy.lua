recipe_energy={

    ---- Energy
    {result="high-density-solar",
      energy=10,
      ingredients={{"steel-plate", 8},{"advanced-circuit", 10},{"copper-plate", 8}},
    },
    {result="stacked-density-solar",
      energy=10,
      ingredients={{"steel-plate", 4},{"high-density-solar", 1},{"solar-panel", 1},{"processing-unit", 2}},
    },
    {result="accumulator2",
      energy=10,
      ingredients={{"basic-accumulator", 2},{"advanced-circuit", 2}},
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
