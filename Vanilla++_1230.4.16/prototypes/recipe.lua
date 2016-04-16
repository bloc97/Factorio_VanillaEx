local i
for i=1,alldat_rec[0] do

data:extend(
{
  {
    type = "recipe",
    name = alldat_rec[i].result,
    enabled = false,
    energy_required = alldat_rec[i].energy,
    ingredients = alldat_rec[i].ingredients,
    result = alldat_rec[i].result
  },

}
)
end