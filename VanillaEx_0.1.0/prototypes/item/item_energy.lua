local item_energy={}

item_energy[1]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[1].name="high-density-solar"
item_energy[1].order="d[solar-panel]-a[solar-panel]-a"

item_energy[2]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[2].name="stacked-density-solar"
item_energy[2].order="d[solar-panel]-a[solar-panel]-b"

item_energy[3]=util.table.deepcopy(data.raw["item"]["solar-panel"])
item_energy[3].name="accumulator2"
item_energy[3].order="e[accumulator]-a[accumulator]-a"

item_energy[4]=util.table.deepcopy(data.raw["item"]["boiler"])
item_energy[4].name="boiler-electric"
item_energy[4].order="b[steam-power]-b[boiler-electric]"

item_energy[5]=util.table.deepcopy(data.raw["item"]["boiler"])
item_energy[5].name="wind-generator"
item_energy[5].order="b[steam-power]-c[wind-generator]"

item_energy[6]=util.table.deepcopy(data.raw["item"]["boiler"])
item_energy[6].name="tidal-generator"
item_energy[6].order="b[steam-power]-d[tidal-generator]"

local thermal = util.table.deepcopy(data.raw["item"]["boiler"])
thermal.name = "thermal-generator"
thermal.order = "e[nuclear-energy]z-a[reactor]"
item_energy[7] = thermal

local rtg = util.table.deepcopy(data.raw["item"]["boiler"])
rtg.name = "radioisotope-generator"
rtg.order = "b[steam-power]-f[radioisotope-generator]"
item_energy[8] = rtg

local lowpowerheatexchanger = util.table.deepcopy(data.raw["item"]["boiler"])
lowpowerheatexchanger.name = "low-power-heat-exchanger"
lowpowerheatexchanger.order = "f[nuclear-energy]-az[low-power-heat-exchanger]"
item_energy[9] = lowpowerheatexchanger

local oxygenfurnace = util.table.deepcopy(data.raw["item"]["electric-furnace"])
oxygenfurnace.name = "oxygen-furnace"
oxygenfurnace.order = "c[electric-furnace]-a[oxygen-furnace]"
item_energy[10] = oxygenfurnace

local fusion = util.table.deepcopy(data.raw["item"]["boiler"])
fusion.name = "fusion-reactor"
fusion.order = "f[nuclear-energy]-ab[fusion-reactor]"
item_energy[11] = fusion

local capacitor=util.table.deepcopy(data.raw["item"]["solar-panel"])
capacitor.name="capacitor"
capacitor.order="e[accumulator]-a[accumulator]-b"
item_energy[12] = capacitor

local fuelcell=util.table.deepcopy(data.raw["item"]["solar-panel"])
fuelcell.name="fuel-cell"
fuelcell.order="e[accumulator]-a[accumulator]-c"
item_energy[13] = fuelcell
  
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