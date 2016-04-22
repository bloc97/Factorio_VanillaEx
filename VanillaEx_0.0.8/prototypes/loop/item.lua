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


for i=1,gunsdat_item_ammo[0] do


data:extend(
{
{
    type = "ammo",
    name = gunsdat_item_ammo[i].name,
    icon = iconpath..gunsdat_item_ammo[i].icon,
    flags = {"goes-to-main-inventory"},
    ammo_type =
    {
      category = "bullet",
      action =
      {
        {
          type = "direct",
          action_delivery =
          {
            {
              type = "instant",
              source_effects =
              {
                {
                  type = "create-explosion",
                  entity_name = "explosion-gunshot"
                }
              },
              target_effects =
			  gunsdat_item_ammo[i].damage,
              {
                {
                  type = "create-entity",
                  entity_name = "explosion-hit"
                },
                
              }
            }
          }
        }
      }
    },
    magazine_size = gunsdat_item_ammo[i].size,
    subgroup = "ammo",
    order = gunsdat_item_ammo[i].order,
    stack_size = gunsdat_item_ammo[i].stack
  },})
end