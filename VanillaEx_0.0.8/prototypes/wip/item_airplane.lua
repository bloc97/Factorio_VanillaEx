local item_airplane={}

item_airplane[1]=util.table.deepcopy(data.raw["item"]["tank"])
item_airplane[1].name="seaplane_u1"
item_airplane[1].order="b[personal-transport]-b[tank]-f"

item_airplane[0]=#item_airplane

for i=1,item_airplane[0] do -- Generates icons and place_result using name
item_airplane[i].icon=toicon(item_airplane[i].name)
item_airplane[i].place_result=item_airplane[i].name
end

for e=1,item_airplane[0] do -- Extends Factorio table (adds item to the game)
data:extend({
item_airplane[e],
})
end