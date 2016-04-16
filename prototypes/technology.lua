local i
for i=1,alldat_tech[0] do
data:extend(
{
{
    type = "technology",
    name = alldat_tech[i].name,
    icon = alldat_tech[i].icon,
	icon_size = 128,
    effects = alldat_tech[i].effects,
    prerequisites = alldat_tech[i].prereq,
    unit =
    {
      count = alldat_tech[i].count,
      ingredients = alldat_tech[i].ingredients,
      time = alldat_tech[i].time_r
    },
    order = alldat_tech[i].order,
  },
}
)
end