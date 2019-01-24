local item={}


item[1]=util.table.deepcopy(data.raw["item"]["iron-gear-wheel"])
item[1].name="acid-canister"
item[1].icon=toicon(item[1].name)
item[1].order="j[acid-canister]"


item[0]=#item -- Finds size of table (# of projectiles)

for e=1,item[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
item[e],
})
end