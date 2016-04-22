local i
for i=1,master_recipe[0] do

data:extend(
{
  {
    type = "recipe",
    name = master_recipe[i].result,
    enabled = false,
    energy_required = master_recipe[i].energy,
    ingredients = master_recipe[i].ingredients,
    result = master_recipe[i].result
  },

}
)
end