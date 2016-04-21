local item_vehicle={}

item_vehicle[1]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[1].name="tank-flame"
item_vehicle[1].order="b[personal-transport]-b[tank]-c"

item_vehicle[2]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[2].name="tank-arty"
item_vehicle[2].order="b[personal-transport]-b[tank]-d"

item_vehicle[3]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[3].name="tank-auto"
item_vehicle[3].order="b[personal-transport]-b[tank]-b"

item_vehicle[4]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[4].name="car-armour"
item_vehicle[4].order="b[personal-transport]-a[car]-a"

item_vehicle[5]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[5].name="car-truck"
item_vehicle[5].order="b[personal-transport]-a[car]-b"

item_vehicle[6]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[6].name="tank-mb"
item_vehicle[6].order="b[personal-transport]-b[tank]-e"

item_vehicle[7]=util.table.deepcopy(data.raw["item"]["tank"])
item_vehicle[7].name="seaplane_u1"
item_vehicle[7].order="b[personal-transport]-b[tank]-f"



item_vehicle[0]=#item_vehicle -- Finds size of table (# of items)

for i=1,item_vehicle[0] do -- Generates icons and place_result using name
item_vehicle[i].icon=toicon(item_vehicle[i].name)
item_vehicle[i].place_result=item_vehicle[i].name
end

for e=1,item_vehicle[0] do -- Extends Factorio table (adds item to the game)
data:extend({
item_vehicle[e],
})
end
