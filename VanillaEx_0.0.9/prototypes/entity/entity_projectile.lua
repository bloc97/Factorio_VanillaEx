local entity_projectile={}

entity_projectile[1]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[1].name="autocannon-projectile"
entity_projectile[1].piercing_damage=100
entity_projectile[1].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = { amount = 30 , type = "physical"}},
  {type = "damage",damage = { amount = 10 , type = "explosion"}}}}}
entity_projectile[1].final_action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}}}}

entity_projectile[2]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[2].name="explosive-autocannon-projectile"
entity_projectile[2].direction_only=false
entity_projectile[2].piercing_damage=0
entity_projectile[2].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
  {type = "create-entity",entity_name = "explosion"},}}}
entity_projectile[2].final_action={type = "area",perimeter=2,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 20, type = "explosion"}},{type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[3]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[3].name="flakcannon-projectile"
entity_projectile[3].direction_only=false
entity_projectile[3].piercing_damage=0
entity_projectile[3].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "explosion"},}}}
entity_projectile[3].final_action={type = "area",perimeter=4,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 8, type = "explosion"}},
  {type = "damage",damage = {amount = 2, type = "impact"}},
  {type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[4]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[4].name="cannon-arty-projectile"
entity_projectile[4].direction_only=false
entity_projectile[4].collision_box={{0, 0}, {0, 0}}
entity_projectile[4].piercing_damage=0
entity_projectile[4].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
  {type = "create-entity",entity_name = "big-explosion"},}}}
entity_projectile[4].final_action={type = "area",perimeter=6,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 80, type = "explosion"}},
  {type = "damage",damage = {amount = 80, type = "physical"}},
  {type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[5]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[5].name="explosive-cannon-arty-projectile"
entity_projectile[5].direction_only=false
entity_projectile[5].collision_box={{0, 0}, {0, 0}}
entity_projectile[5].piercing_damage=0
entity_projectile[5].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
  {type = "create-entity",entity_name = "medium-explosion"},
  {type = "create-entity",entity_name = "big-explosion"},
  {type = "create-entity",entity_name = "massive-explosion"},}}}
entity_projectile[5].final_action={type = "area",perimeter=10,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 160, type = "explosion"}},
  {type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[6]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[6].name="mb-apds-projectile"
entity_projectile[6].piercing_damage=500
entity_projectile[6].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = { amount = 250 , type = "physical"}},
  {type = "damage",damage = { amount = 100 , type = "impact"}},}}}
entity_projectile[6].final_action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}}}}

entity_projectile[7]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[7].name="mb-heat-projectile"
entity_projectile[7].piercing_damage=100
entity_projectile[7].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
  {type = "create-entity",entity_name = "explosion"},
  {type = "damage",damage = { amount = 50 , type = "physical"}},
  {type = "damage",damage = { amount = 350 , type = "explosion"}},}}}
entity_projectile[7].final_action={type = "area",perimeter=1,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 160, type = "explosion"}},
  {type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[8]=util.table.deepcopy(data.raw["projectile"]["cannon-projectile"])
entity_projectile[8].name="mb-he-projectile"
entity_projectile[8].direction_only=false
entity_projectile[8].piercing_damage=0
entity_projectile[8].action={type = "direct",action_delivery ={type = "instant",target_effects ={
  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
  {type = "create-entity",entity_name = "big-explosion"},}}}
entity_projectile[8].final_action={type = "area",perimeter=10,action_delivery ={type = "instant",target_effects ={
  {type = "damage",damage = {amount = 200, type = "explosion"}},
  {type = "create-entity",entity_name = "explosion"},}}}

entity_projectile[0]=#entity_projectile -- Finds size of table (# of projectiles)

for e=1,entity_projectile[0] do -- Extends Factorio table (adds entity to the game)
  data:extend({
    entity_projectile[e],
  })
end

			

			

			

			

			

			

			

			

			

			

			

			

			

			