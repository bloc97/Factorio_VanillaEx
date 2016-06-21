local item_defense={}

item_defense[1]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[1].name="iron-wall"
item_defense[1].order="a[wall]-a[stone-wall]-a"

item_defense[2]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[2].name="concrete-wall"
item_defense[2].order="a[wall]-a[stone-wall]-b"

item_defense[3]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[3].name="plastic-wall"
item_defense[3].order="a[wall]-a[stone-wall]-c"

item_defense[4]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[4].name="composite-wall"
item_defense[4].order="a[wall]-a[stone-wall]-d"

item_defense[5]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[5].name="iron-gate"
item_defense[5].order="a[wall]-b[gate]-a"

item_defense[6]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[6].name="concrete-gate"
item_defense[6].order="a[wall]-b[gate]-b"

item_defense[7]=util.table.deepcopy(data.raw["item"]["gate"])
item_defense[7].name="composite-gate"
item_defense[7].order="a[wall]-b[gate]-c"

item_defense[0]=#item_defense

for i=1,item_defense[0] do -- Generates icons and minable.result using name
  item_defense[i].icon=toicon(item_defense[i].name)
end

for k=1,item_defense[0] do -- Generates placeable entity
  item_defense[k].place_result=item_defense[k].name
end

for e=1,item_defense[0] do -- Extends Factorio table (adds entity to the game)
  data:extend({
    item_defense[e],
  })
end
