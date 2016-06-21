local entity_vehicle={}

entity_vehicle[1]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[1].name="tank-flame"
entity_vehicle[1].icon=toicon(entity_vehicle[1].name)
entity_vehicle[1].minable.result=entity_vehicle[1].name
entity_vehicle[1].max_health=1000
entity_vehicle[1].resistances={{type = "fire",decrease=15,percent=75},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=60},{type = "explosion",decrease=15,percent=30},{type = "acid",decrease=10,percent=20}}
entity_vehicle[1].collision_mask=nil
entity_vehicle[1].consumption="600kW"
entity_vehicle[1].braking_power="400kW"
entity_vehicle[1].burner.effectivity=0.75
entity_vehicle[1].effectivity=0.6
entity_vehicle[1].burner.fuel_inventory_size=2
entity_vehicle[1].terrain_friction_modifier=0.2
entity_vehicle[1].friction=0.002
entity_vehicle[1].turret_rotation_speed=0.25
entity_vehicle[1].rotation_speed=0.0035
entity_vehicle[1].weight=22000
entity_vehicle[1].inventory_size=80
entity_vehicle[1].guns={"tank-cannon-flame","tank-machine-gun"}

entity_vehicle[2]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[2].name="tank-arty"
entity_vehicle[2].icon=toicon(entity_vehicle[2].name)
entity_vehicle[2].minable.result=entity_vehicle[2].name
entity_vehicle[2].max_health=800
entity_vehicle[2].resistances={{type = "fire",decrease=15,percent=50},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=30},{type = "explosion",decrease=15,percent=30},{type = "acid",decrease=10,percent=20}}
entity_vehicle[2].consumption="800kW"
entity_vehicle[2].braking_power="400kW"
entity_vehicle[2].burner.effectivity=0.75
entity_vehicle[2].effectivity=0.6
entity_vehicle[2].burner.fuel_inventory_size=3
entity_vehicle[2].terrain_friction_modifier=0.2
entity_vehicle[2].friction=0.003
entity_vehicle[2].turret_rotation_speed=0.15
entity_vehicle[2].rotation_speed=0.0020
entity_vehicle[2].weight=28000
entity_vehicle[2].inventory_size=40
entity_vehicle[2].guns={"tank-cannon-arty","tank-machine-gun"}

entity_vehicle[3]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[3].name="tank-auto"
entity_vehicle[3].icon=toicon(entity_vehicle[3].name)
entity_vehicle[3].minable.result=entity_vehicle[3].name
entity_vehicle[3].max_health=800
entity_vehicle[3].resistances={{type = "fire",decrease=15,percent=50},{type = "physical",decrease=15,percent=30},{type = "impact",decrease=50,percent=60},{type = "explosion",decrease=15,percent=30},{type = "acid",decrease=10,percent=20}}
entity_vehicle[3].consumption="500kW"
entity_vehicle[3].braking_power="400kW"
entity_vehicle[3].burner.effectivity=0.75
entity_vehicle[3].effectivity=0.6
entity_vehicle[3].burner.fuel_inventory_size=2
entity_vehicle[3].terrain_friction_modifier=0.2
entity_vehicle[3].friction=0.0015
entity_vehicle[3].turret_rotation_speed=0.45
entity_vehicle[3].rotation_speed=0.0035
entity_vehicle[3].weight=18000
entity_vehicle[3].inventory_size=60
entity_vehicle[3].guns={"tank-autocannon","tank-flakcannon"}

entity_vehicle[4]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[4].name="car-armour"
entity_vehicle[4].icon=toicon(entity_vehicle[4].name)
entity_vehicle[4].minable.result=entity_vehicle[4].name
entity_vehicle[4].max_health=500
entity_vehicle[4].resistances={{type = "fire",decrease=15,percent=45},{type = "physical",decrease=15,percent=25},{type = "impact",decrease=40,percent=50},{type = "explosion",decrease=15,percent=20},{type = "acid",decrease=10,percent=20}}
entity_vehicle[4].consumption="400kW"
entity_vehicle[4].braking_power="400kW"
entity_vehicle[4].effectivity=0.6
entity_vehicle[4].burner.effectivity=0.75
entity_vehicle[4].burner.fuel_inventory_size=2
entity_vehicle[4].terrain_friction_modifier=0.05
entity_vehicle[4].friction=0.0014
entity_vehicle[4].turret_rotation_speed=0.55
entity_vehicle[4].rotation_speed=0.0035
entity_vehicle[4].weight=15000
entity_vehicle[4].inventory_size=40
entity_vehicle[4].guns={"car-gatling-gun","tank-machine-gun"}

entity_vehicle[5]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[5].name="car-truck"
entity_vehicle[5].icon=toicon(entity_vehicle[5].name)
entity_vehicle[5].minable.result=entity_vehicle[5].name
entity_vehicle[5].max_health=600
entity_vehicle[5].resistances={{type = "fire",decrease=5,percent=5},{type = "physical",decrease=5,percent=10},{type = "impact",decrease=20,percent=30},{type = "explosion",decrease=10,percent=10},{type = "acid",decrease=5,percent=10}}
entity_vehicle[5].consumption="300kW"
entity_vehicle[5].braking_power="200kW"
entity_vehicle[5].effectivity=0.6
entity_vehicle[5].burner.effectivity=0.75
entity_vehicle[5].burner.fuel_inventory_size=2
entity_vehicle[5].terrain_friction_modifier=0
entity_vehicle[5].friction=0.001
entity_vehicle[5].turret_rotation_speed=0.35
entity_vehicle[5].rotation_speed=0.0035
entity_vehicle[5].weight=10000
entity_vehicle[5].inventory_size=80
entity_vehicle[5].guns=nil

entity_vehicle[6]=util.table.deepcopy(data.raw["car"]["tank"])
entity_vehicle[6].name="tank-mb"
entity_vehicle[6].icon=toicon(entity_vehicle[6].name)
entity_vehicle[6].minable.result=entity_vehicle[6].name
entity_vehicle[6].max_health=1500
entity_vehicle[6].resistances={{type = "fire",decrease=15,percent=75},{type = "physical",decrease=20,percent=40},{type = "impact",decrease=50,percent=80},{type = "explosion",decrease=30,percent=50},{type = "acid",decrease=30,percent=30}}
entity_vehicle[6].consumption="1000kW"
entity_vehicle[6].braking_power="500kW"
entity_vehicle[6].burner.effectivity=0.75
entity_vehicle[6].effectivity=0.6
entity_vehicle[6].burner.fuel_inventory_size=4
entity_vehicle[6].terrain_friction_modifier=0.1
entity_vehicle[6].friction=0.002
entity_vehicle[6].turret_rotation_speed=0.35
entity_vehicle[6].rotation_speed=0.0055
entity_vehicle[6].weight=30000
entity_vehicle[6].inventory_size=80
entity_vehicle[6].guns={"tank-mb-cannon","tank-rocket"}


entity_vehicle[0]=#entity_vehicle -- Finds size of table (# of vehicles)

for i=1,entity_vehicle[0] do -- Generates icons and minable.result using name
  entity_vehicle[i].icon=toicon(entity_vehicle[i].name)
  entity_vehicle[i].minable.result=entity_vehicle[i].name
end

for e=1,entity_vehicle[0] do -- Extends Factorio table (adds entity to the game)
  data:extend({
    entity_vehicle[e],
  })
end


