local item_energy={}

item_energy[1]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[1].name="high-density-solar"
item_energy[1].order="d[solar-panel]-a[solar-panel]-a"

item_energy[2]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[2].name="stacked-density-solar"
item_energy[2].order="d[solar-panel]-a[solar-panel]-b"

item_energy[3]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[3].name="accumulator2"
item_energy[3].order="e[accumulator]-a[basic-accumulator]-a"

item_energy[4]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[4].name="tidal-generator"
item_energy[4].order="d[solar-panel]-a[solar-panel]-c"

item_energy[5]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[5].name="wind-generator"
item_energy[5].order="d[solar-panel]-a[solar-panel]-d"

item_energy[6]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[6].name="wind-generator2"
item_energy[6].order="d[solar-panel]-a[solar-panel]-e"

item_energy[0]=#item_energy

for i=1,item_energy[0] do -- Generates icons and minable.result using name
item_energy[i].icon=toicon(item_energy[i].name)
end

for k=1,item_energy[0] do -- Generates placeable entity
item_energy[k].place_result=item_energy[k].name
end

for e=1,item_energy[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
item_energy[e],
})
end