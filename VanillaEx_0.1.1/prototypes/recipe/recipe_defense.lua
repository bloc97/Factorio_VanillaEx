recipe_defense={
{result="iron-wall",
energy=0.5,
ingredients={{"iron-plate", 10},{"steel-plate", 1}},
},
{result="concrete-wall",
energy=0.5,
ingredients={{"concrete", 10},{"steel-plate", 1}},
},
{result="plastic-wall",
energy=0.5,
ingredients={{"plastic-bar", 20},{"steel-plate", 1}},
},
{result="composite-wall",
energy=0.5,
ingredients={{"plastic-wall", 1},{"concrete-wall", 1},{"iron-wall", 1}},
},
{result="iron-gate",
energy=0.5,
ingredients = {{"iron-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
{result="concrete-gate",
energy=0.5,
ingredients = {{"concrete-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
{result="composite-gate",
energy=0.5,
ingredients = {{"composite-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
}

recipe_defense[0]=#recipe_defense

local i
for i=1,recipe_defense[0] do

data:extend(
{
  {
    type = "recipe",
    name = recipe_defense[i].result,
    enabled = false,
    energy_required = recipe_defense[i].energy,
    ingredients = recipe_defense[i].ingredients,
    result = recipe_defense[i].result
  },

}
)
end