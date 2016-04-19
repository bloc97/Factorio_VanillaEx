local i
for i=1,tanksdat_proj[0] do
data:extend(
{
  {
    type = "projectile",
    name = tanksdat_proj[i].name,
    flags = {"not-on-map"},
    collision_box = tanksdat_proj[i].collision_box,
    acceleration = 0,
    direction_only = tanksdat_proj[i].direction_only,
    piercing_damage = tanksdat_proj[i].piercing_damage,
    action = tanksdat_proj[i].action,
    final_action = tanksdat_proj[i].final_action,
    animation =
    {
      filename = "__base__/graphics/entity/bullet/bullet.png",
      frame_count = 1,
      width = 3,
      height = 50,
      priority = "high"
    },
  },
 
}
)
end