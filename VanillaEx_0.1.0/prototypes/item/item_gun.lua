local item_gun={}

item_gun[2]=util.table.deepcopy(data.raw["gun"]["rocket-launcher"])
item_gun[2].name="tank-rocket"
item_gun[2].icon=toicon(item_gun[2].name)
item_gun[2].flags={"goes-to-main-inventory", "hidden"}
item_gun[2].attack_parameters.cooldown=120
item_gun[2].attack_parameters.range=60

item_gun[3]=util.table.deepcopy(data.raw["gun"]["tank-cannon"])
item_gun[3].name="tank-mb-cannon"
item_gun[3].icon=toicon(item_gun[3].name)
item_gun[3].attack_parameters.ammo_category="mb-cannon-shell"
item_gun[3].attack_parameters.cooldown=80
item_gun[3].attack_parameters.range=50

item_gun[4]=util.table.deepcopy(data.raw["gun"]["tank-cannon"])
item_gun[4].name="tank-autocannon"
item_gun[4].icon=toicon(item_gun[4].name)
item_gun[4].attack_parameters.ammo_category="autocannon-shell"
item_gun[4].attack_parameters.cooldown=30
item_gun[4].attack_parameters.range=25

item_gun[5]=util.table.deepcopy(data.raw["gun"]["tank-cannon"])
item_gun[5].name="tank-flakcannon"
item_gun[5].icon=toicon(item_gun[5].name)
item_gun[5].attack_parameters.ammo_category="flakcannon-shell"
item_gun[5].attack_parameters.cooldown=24
item_gun[5].attack_parameters.range=30
item_gun[5].attack_parameters.sound[1].filename=modname.."/sound/fight/heavy-flak.ogg"

item_gun[6]=util.table.deepcopy(data.raw["gun"]["submachine-gun"])
item_gun[6].name="car-gatling-gun"
item_gun[6].icon=toicon("gatling-gun")
item_gun[6].flags={"goes-to-main-inventory", "hidden"}
item_gun[6].attack_parameters.cooldown=0.4
item_gun[6].attack_parameters.range=18

item_gun[7]=util.table.deepcopy(data.raw["gun"]["tank-cannon"])
item_gun[7].name="tank-cannon-arty"
item_gun[7].icon=toicon(item_gun[7].name)
item_gun[7].attack_parameters.ammo_category="arty-shell"
item_gun[7].attack_parameters.cooldown=180
item_gun[7].attack_parameters.range=70

item_gun[8]=util.table.deepcopy(data.raw["gun"]["submachine-gun"])
item_gun[8].name="assault-gun"
item_gun[8].icon=toicon(item_gun[8].name)
item_gun[8].order="a[basic-clips]-b[submachine-gun]-a"
item_gun[8].attack_parameters.cooldown=5
item_gun[8].attack_parameters.range=25
item_gun[8].attack_parameters.movement_slow_down_factor=0.6

item_gun[9]=util.table.deepcopy(data.raw["gun"]["submachine-gun"])
item_gun[9].name="machine-gun"
item_gun[9].icon=toicon(item_gun[9].name)
item_gun[9].order="a[basic-clips]-b[submachine-gun]-b"
item_gun[9].attack_parameters.cooldown=3
item_gun[9].attack_parameters.range=30
item_gun[9].attack_parameters.movement_slow_down_factor=0.85

item_gun[10]=util.table.deepcopy(data.raw["gun"]["submachine-gun"])
item_gun[10].name="gatling-gun"
item_gun[10].icon=toicon(item_gun[10].name)
item_gun[10].order="a[basic-clips]-b[submachine-gun]-c"
item_gun[10].attack_parameters.cooldown=1.5
item_gun[10].attack_parameters.range=15
item_gun[10].attack_parameters.movement_slow_down_factor=0.95

item_gun[11]=util.table.deepcopy(data.raw["item"]["land-mine"])
item_gun[11].name="corrosive-mine"
item_gun[11].icon=toicon(item_gun[11].name)
item_gun[11].order="f[land-mine]-a[corrosive-mine]"
item_gun[11].place_result=item_gun[11].name
item_gun[11].damage_radius=10

item_gun[0]=#item_gun -- Finds size of table (# of projectiles)

for e=2,item_gun[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
item_gun[e],
})
end
			
