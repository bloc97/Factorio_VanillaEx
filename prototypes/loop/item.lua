local i
for i=1,tanksdat_item_vehi[0] do
data:extend(
{
  {
    type = "item",
    name = tanksdat_item_vehi[i].name,
    icon = iconpath..tanksdat_item_vehi[i].icon,
    flags = {"goes-to-quickbar"},
    subgroup = "transport",
    order = tanksdat_item_vehi[i].order,
    place_result = tanksdat_item_vehi[i].name,
    stack_size = 1
  },
}
)
end

local i
for i=1,energydat_item[0] do
data:extend(
{
  {
    type = "item",
    name = energydat_item[i].name,
    icon = iconpath..energydat_item[i].icon,
    flags = {"goes-to-quickbar"},
    subgroup = "energy",
    order = energydat_item[i].order,
    place_result = energydat_item[i].name,
    stack_size = 50
  },
}
)
end

local i
for i=1,wallsdat_item[0] do
data:extend(
{
  {
    type = "item",
    name = wallsdat_item[i].name,
    icon = iconpath..wallsdat_item[i].name..".png",
    flags = {"goes-to-quickbar"},
    subgroup = "defensive-structure",
    order = wallsdat_item[i].order,
    place_result = wallsdat_item[i].name,
    stack_size = 50
  },
}
)
end