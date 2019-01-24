local entity_wall={}

entity_wall[1]=util.table.deepcopy(data.raw["wall"]["stone-wall"])
entity_wall[1].name="iron-wall"
entity_wall[1].max_health=500
entity_wall[1].resistances={
		{type = "physical",decrease = 15,percent = 30},
		{type = "impact",decrease = 35,percent = 40},
		{type = "explosion",decrease = 15,percent = 40},
		{type = "fire",percent = 100},
		{type = "acid",percent = 5},
		{type = "laser",percent = 80}}
		
entity_wall[2]=util.table.deepcopy(data.raw["wall"]["stone-wall"])
entity_wall[2].name="concrete-wall"
entity_wall[2].max_health=600
entity_wall[2].resistances={
		{type = "physical",decrease = 10,percent = 25},
		{type = "impact",decrease = 50,percent = 70},
		{type = "explosion",decrease = 10,percent = 30},
		{type = "fire",percent = 100},
		{type = "acid",percent = 30},
		{type = "laser",percent = 30}}

entity_wall[3]=util.table.deepcopy(data.raw["wall"]["stone-wall"])
entity_wall[3].name="plastic-wall"
entity_wall[3].max_health=800
entity_wall[3].resistances={
		{type = "physical",decrease = 10,percent = 15},
		{type = "impact",decrease = 45,percent = 20},
		{type = "explosion",decrease = 40,percent = 70},
		{type = "fire",percent = 60},
		{type = "laser",percent = 90}}

entity_wall[4]=util.table.deepcopy(data.raw["wall"]["stone-wall"])
entity_wall[4].name="composite-wall"
entity_wall[4].max_health=1000
entity_wall[4].resistances={
		{type = "physical",decrease = 20,percent = 50},
		{type = "impact",decrease = 60,percent = 80},
		{type = "explosion",decrease = 20,percent = 60},
		{type = "fire",percent = 95},
		{type = "acid",percent = 20},
		{type = "laser",percent = 50}}

entity_wall[0]=#entity_wall -- Finds size of table (# of walls)

for i=1,entity_wall[0] do -- Generates icons, minable.result and sprites using name
entity_wall[i].icon=toicon(entity_wall[i].name)
entity_wall[i].minable.result=entity_wall[i].name
entity_wall[i].pictures.single.layers[1].filename=todefense(entity_wall[i].name).."wall-single.png"
entity_wall[i].pictures.straight_vertical[1].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-vertical-1.png"
entity_wall[i].pictures.straight_vertical[2].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-vertical-2.png"
entity_wall[i].pictures.straight_vertical[3].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-vertical-3.png"
entity_wall[i].pictures.straight_horizontal[1].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-horizontal-1.png"
entity_wall[i].pictures.straight_horizontal[2].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-horizontal-2.png"
entity_wall[i].pictures.straight_horizontal[3].layers[1].filename=todefense(entity_wall[i].name).."wall-straight-horizontal-3.png"
entity_wall[i].pictures.corner_right_down.layers[1].filename=todefense(entity_wall[i].name).."wall-corner-right-down.png"
entity_wall[i].pictures.corner_left_down.layers[1].filename=todefense(entity_wall[i].name).."wall-corner-left-down.png"
entity_wall[i].pictures.t_up.layers[1].filename=todefense(entity_wall[i].name).."wall-t-down.png"
entity_wall[i].pictures.ending_right.layers[1].filename=todefense(entity_wall[i].name).."wall-ending-right.png"
entity_wall[i].pictures.ending_left.layers[1].filename=todefense(entity_wall[i].name).."wall-ending-left.png"
end

for e=1,entity_wall[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
entity_wall[e],
})
end


local entity_gate={}

entity_gate[1]=util.table.deepcopy(data.raw["gate"]["gate"])
entity_gate[1].name="iron-gate"
entity_gate[1].max_health=500
entity_gate[1].resistances={
		{type = "physical",decrease = 15,percent = 30},
		{type = "impact",decrease = 35,percent = 40},
		{type = "explosion",decrease = 15,percent = 40},
		{type = "fire",percent = 100},
		{type = "laser",percent = 80}}

entity_gate[2]=util.table.deepcopy(data.raw["gate"]["gate"])
entity_gate[2].name="concrete-gate"
entity_gate[2].max_health=600
entity_gate[2].resistances={
		{type = "physical",decrease = 10,percent = 25},
		{type = "impact",decrease = 50,percent = 70},
		{type = "explosion",decrease = 10,percent = 30},
		{type = "fire",percent = 100},
		{type = "laser",percent = 30}}

entity_gate[3]=util.table.deepcopy(data.raw["gate"]["gate"])
entity_gate[3].name="composite-gate"
entity_gate[3].max_health=1000
entity_gate[3].resistances={
		{type = "physical",decrease = 20,percent = 50},
		{type = "impact",decrease = 60,percent = 80},
		{type = "explosion",decrease = 20,percent = 60},
		{type = "fire",percent = 95},
		{type = "laser",percent = 50}}

entity_gate[0]=#entity_gate -- Finds size of table (# of gates)		

for i=1,entity_gate[0] do -- Generates icons, minable.result and sprites using name
entity_gate[i].icon=toicon(entity_gate[i].name)
entity_gate[i].minable.result=entity_gate[i].name
entity_gate[i].vertical_animation.layers[1].filename=todefense(entity_gate[i].name).."gate-vertical.png"
entity_gate[i].horizontal_animation.layers[1].filename=todefense(entity_gate[i].name).."gate-horizontal.png"
entity_gate[i].horizontal_rail_animation_left.layers[1].filename=todefense(entity_gate[i].name).."gate-rail-horizontal-left.png"
entity_gate[i].horizontal_rail_animation_right.layers[1].filename=todefense(entity_gate[i].name).."gate-rail-horizontal-right.png"
entity_gate[i].vertical_rail_animation_left.layers[1].filename=todefense(entity_gate[i].name).."gate-rail-vertical-left.png"
entity_gate[i].vertical_rail_animation_right.layers[1].filename=todefense(entity_gate[i].name).."gate-rail-vertical-right.png"
end

for e=1,entity_gate[0] do -- Extends Factorio table (adds entity to the game)
data:extend({
entity_gate[e],
})
end