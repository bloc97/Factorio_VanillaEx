technology_enabled={}
technology_all={}

--technology_all={
if enable_guns then
technology_all[1]={name="cooling",icon=modname.."/graphics/technology/cooling.png",
effects={
		{type = "unlock-recipe",recipe = "assault-gun"},
		{type = "unlock-recipe",recipe = "machine-gun"},
		{type = "unlock-recipe",recipe = "gatling-gun"}
		},
prereq={"military-2", "engine"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1}},
count=30,time_r=20,
order="e-c-b-a",
}
table.insert(technology_enabled, technology_all[1])

technology_all[2]={name="ballistics",icon=modname.."/graphics/technology/ballistics.png",
effects={
		{type = "unlock-recipe",recipe = "hollow-bullet-magazine"},
		{type = "unlock-recipe",recipe = "incendiary-bullet-magazine"},
		{type = "unlock-recipe",recipe = "explosive-bullet-magazine"}
		},
prereq={"bullet-damage-1","bullet-speed-2", "military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1}},
count=50,time_r=30,
order="e-c-b-b",
}
table.insert(technology_enabled, technology_all[2])
end

if enable_vehicles_military or enable_energy then
technology_all[3]={name="advancedopt",icon=modname.."/graphics/technology/advanced_optics.png",
effects={
		{type = "unlock-recipe",recipe = "tank-arty"},
		{type = "unlock-recipe",recipe = "cannon-shell-arty"},
		{type = "unlock-recipe",recipe = "explosive-cannon-shell-arty"},
		},
prereq={"military-3","tanks"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
count=100,time_r=30,
order="a-h-b",
}
if enable_vehicles_military==false then
technology_all[3].effects=nil
end
table.insert(technology_enabled, technology_all[3])
end

if enable_vehicles_civilian or enable_vehicles_military then
technology_all[5]={name="transport",icon=modname.."/graphics/technology/transportation.png",
effects={},
prereq={"automobilism", "military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=50,time_r=30,
order="e-c-b-x",
}
if enable_vehicles_civilian then
table.insert(technology_all[5].effects, {type = "unlock-recipe",recipe = "car-truck"})
end
if enable_vehicles_military then
table.insert(technology_all[5].effects, {type = "unlock-recipe",recipe = "car-armour"})
end
table.insert(technology_enabled, technology_all[5])
end

if enable_energy then

technology_all[6]={name="dense-solar",icon=modname.."/graphics/technology/dense-solar.png",
effects={
		{type = "unlock-recipe",recipe = "high-density-solar"},
		},
prereq={"advanced-electronics-2","solar-energy","laser"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=300,time_r=40,
order="a-h-d",
}
table.insert(technology_enabled, technology_all[6])

technology_all[7]={name="stacked-solar",icon=modname.."/graphics/technology/stacked-solar.png",
effects={
		{type = "unlock-recipe",recipe = "stacked-density-solar"},
		},
prereq={"advancedopt","dense-solar",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"high-tech-science-pack", 1}},
count=200,time_r=50,
order="a-h-e",
}
table.insert(technology_enabled, technology_all[7])

technology_all[8]={name="adv-battery",icon=modname.."/graphics/technology/battery2.png",
effects={
		{type = "unlock-recipe",recipe = "accumulator2"},
		},
prereq={"electric-energy-accumulators-1","advanced-electronics",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
count=200,time_r=30,
order="b-c-a",
}
table.insert(technology_enabled, technology_all[8])
end

--[[technology_all[8]={name="fluid-dynamics",icon=modname.."/graphics/technology/amphi.png",
effects={
		--{type = "unlock-recipe",recipe = "car-amphi"},
		},
prereq={"automobilism","fluid-handling",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=40,time_r=20,
order="e-c-b-z",
}]]

if enable_defense then
technology_all[9]={name="adv-fort",icon=modname.."/graphics/technology/adv-walls.png",
effects={
		{type = "unlock-recipe",recipe = "iron-wall"},
		{type = "unlock-recipe",recipe = "concrete-wall"},
		{type = "unlock-recipe",recipe = "plastic-wall"},
		{type = "unlock-recipe",recipe = "iron-gate"},
		{type = "unlock-recipe",recipe = "concrete-gate"},
		},
prereq={"advanced-material-processing","stone-walls","gates","plastics","concrete"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=100,time_r=20,
order="a-l-b",
}
table.insert(technology_enabled, technology_all[9])

technology_all[10]={name="composite-materials",icon=modname.."/graphics/technology/composite.png",
effects={
		{type = "unlock-recipe",recipe = "composite-wall"},
		{type = "unlock-recipe",recipe = "composite-gate"},
		},
prereq={"adv-fort","advanced-material-processing-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=250,time_r=30,
order="a-l-c",
}
table.insert(technology_enabled, technology_all[10])
end

if enable_vehicles_military then
technology_all[11]={name="combined",icon=modname.."/graphics/technology/combined.png",
effects={
		{type = "unlock-recipe",recipe = "tank-auto"},
		{type = "unlock-recipe",recipe = "autocannon-shell"},
		{type = "unlock-recipe",recipe = "explosive-autocannon-shell"},
		{type = "unlock-recipe",recipe = "flakcannon-shell"},
		},
prereq={"military-3","tanks","transport","explosive-rocketry","cannon-shell-speed-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
count=100,time_r=30,
order="e-c-c-a",
}
table.insert(technology_enabled, technology_all[11])

technology_all[12]={name="mbt",icon=modname.."/graphics/technology/tank-mb.png",
effects={
		{type = "unlock-recipe",recipe = "tank-mb"},
		{type = "unlock-recipe",recipe = "mb-apds"},
		{type = "unlock-recipe",recipe = "mb-heat"},
		{type = "unlock-recipe",recipe = "mb-he"},
		},
prereq={"advanced-electronics-2","advancedopt","combined","uranium-ammo","cannon-shell-damage-2","composite-materials"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1},{"high-tech-science-pack", 1}},
count=1200,time_r=35,
order="e-c-c-b",
}
table.insert(technology_enabled, technology_all[12])
end
--}

if enable_guns or enable_vehicles_military then
technology_all[13]={name="chemical-warfare",icon=modname.."/graphics/technology/chemical-warfare.png",
effects={
		{type = "unlock-recipe",recipe = "acid-canister"},
		},
prereq={"sulfur-processing"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"military-science-pack", 1}},
count=75,time_r=15,
order="a-e-f",
}
table.insert(technology_enabled, technology_all[13])

technology_all[14]={name="corrosive-mines",icon=modname.."/graphics/technology/corrosive-mines.png",
effects={
		{type = "unlock-recipe",recipe = "corrosive-mine"},
		},
prereq={"chemical-warfare","military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"military-science-pack", 1}},
count=100,time_r=30,
order="a-e-g",
}
table.insert(technology_enabled, technology_all[14])

technology_all[15]={name="corrosive-rocketry",icon=modname.."/graphics/technology/corrosive-rocketry.png",
effects={
		{type = "unlock-recipe",recipe = "corrosive-rocket"},
		},
prereq={"chemical-warfare","rocketry","military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"military-science-pack", 1}},
count=150,time_r=15,
order="a-e-h",
}
table.insert(technology_enabled, technology_all[15])

technology_all[16]={name="corrosive-weaponry",icon=modname.."/graphics/technology/corrosive-weaponry.png",
effects={
		{type = "unlock-recipe",recipe = "corrosive-bullet-magazine"},
		{type = "unlock-recipe",recipe = "corrosive-cannon-shell"},
		{type = "unlock-recipe",recipe = "corrosive-shotgun-magazine"},
		},
prereq={"chemical-warfare","ballistics","tanks"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},{"military-science-pack", 1}},
count=150,time_r=30,
order="a-e-h",
}
table.insert(technology_enabled, technology_all[16])
end

technology_enabled[0]=#technology_enabled


local i
for i=1,technology_enabled[0] do
data:extend(
{
{
    type = "technology",
    name = technology_enabled[i].name,
    icon = technology_enabled[i].icon,
	icon_size = 128,
    effects = technology_enabled[i].effects,
    prerequisites = technology_enabled[i].prereq,
    unit =
    {
      count = technology_enabled[i].count,
      ingredients = technology_enabled[i].ingredients,
      time = technology_enabled[i].time_r
    },
    order = technology_enabled[i].order,
  },
}
)
end