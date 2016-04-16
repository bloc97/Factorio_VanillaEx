
-- First entry in a table has ID 1, second has ID 2, ID 3, ID 4, etc.
-- ID 0 is reserved for table size! DO NOT USE!
modname="__Vanilla++__"
iconpath=modname.."/graphics/icons/"


tanksdat_vehi={-- Make sure entity and item have same table ID or icon will be wrong
{name="tank-flame",-- Note name and result are all called in tanksdat_vehi[i].name!
health=1000,
resistances={15,75,15,30,50,60,15,30,10,20},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=2,
power="600kW",
braking_power="400kW",
friction=0.002,
friction_mod=0.2,
light_intensity=0.6, -- 0 to 1
turret_speed=0.25, -- In rot/s
rot_speed=0.0035,
weight=22000,
inv_size=80,
guns={"tank-cannon-flame","tank-machine-gun"},
collision=nil,
},
{name="tank-arty",
health=800,
resistances={15,50,15,30,50,30,15,30,10,20},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=3,
power="800kW",
braking_power="400kW",
friction=0.003,
friction_mod=0.2, -- Terrain modifier
light_intensity=0.6, -- 0 to 1
turret_speed=0.15, -- In rot/s
rot_speed=0.0020,
weight=28000,
inv_size=40,
guns={"tank-cannon-arty","tank-machine-gun"},
collision=nil,
},
{name="tank-auto",
health=800,
resistances={15,50,15,30,50,60,15,30,10,20},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=2,
power="500kW",
braking_power="400kW",
friction=0.0015,
friction_mod=0.2,
light_intensity=0.6, -- 0 to 1
turret_speed=0.45, -- In rot/s
rot_speed=0.0035,
weight=18000,
inv_size=60,
guns={"tank-autocannon","tank-flakcannon"},
collision=nil,
},
{name="car-armour",
health=500,
resistances={15,45,15,25,40,50,15,20,10,20},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=2,
power="400kW",
braking_power="400kW",
friction=0.0014,
friction_mod=0.05,
light_intensity=0.6, -- 0 to 1
turret_speed=0.55, -- In rot/s
rot_speed=0.0035,
weight=15000,
inv_size=40,
guns={"car-gatling-gun","tank-machine-gun"},
collision=nil,
},
{name="car-truck",
health=600,
resistances={05,05,05,10,20,30,10,10,5,10},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=2,
power="300kW",
braking_power="200kW",
friction=0.0010,
friction_mod=0,
light_intensity=0.9, -- 0 to 1
turret_speed=0.35, -- In rot/s
rot_speed=0.0035,
weight=10000,
inv_size=120,
guns={},
collision=nil,
},
{name="car-amphi",
health=300,
resistances={05,05,05,05,20,30,05,05,05,05},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.9,
burner_effectivity=0.95,
fuel_inv_size=1,
power="150kW",
braking_power="50kW",
friction=0.002,
friction_mod=1,
light_intensity=0.9, -- 0 to 1
turret_speed=0.35, -- In rot/s
rot_speed=0.0015,
weight=10000,
inv_size=80,
guns={},
collision={"object-layer"},
},
{name="tank-mb",-- Note name and result are all called in tanksdat_vehi[i].name!
health=1500,
resistances={15,75,20,40,70,80,30,50,30,30},
--(dec,%)    Fire  Phys  Impac Explo  Acid
effectivity=0.6,
burner_effectivity=0.75,
fuel_inv_size=4,
power="1000kW",
braking_power="500kW",
friction=0.002,
friction_mod=0.1,
light_intensity=1, -- 0 to 1
turret_speed=0.35, -- In rot/s
rot_speed=0.0055,
weight=30000,
inv_size=80,
guns={"tank-mb-cannon","tank-rocket"},
collision=nil,
},
}
tanksdat_vehi_anim={ -- Keep same table ID than tanksdat_vehi or sprites will be wrong.
{-- tank-flame
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={{filename = modname.."/graphics/entity/tank/turret-flame.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }},
},
{-- tank-arty
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={{filename = modname.."/graphics/entity/tank/turret-flame.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }},
},
{-- tank-auto
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={{filename = "__base__/graphics/entity/tank/turret.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {
          filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }},
},
{-- car-armour
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={{filename = "__base__/graphics/entity/car/car-turret.png",
          line_length = 8,
          width = 36,
          height = 29,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/car/car-turret-shadow.png",
          line_length = 8,
          width = 46,
          height = 31,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }},
},
{-- car-truck
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={},
},
{-- car-amphi
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={},
},
{-- tank-mb
base={{filename = "__base__/graphics/entity/tank/base-1.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-2.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-3.png",
             width_in_frames = 2,
             height_in_frames = 16,
            },
            {filename = "__base__/graphics/entity/tank/base-4.png",
             width_in_frames = 2,
             height_in_frames = 16,
            }},
turret={{filename = "__base__/graphics/entity/tank/turret.png",
          line_length = 8,
          width = 92,
          height = 69,
          frame_count = 1,
          direction_count = 64,
          shift = {-0.15625, -1.07812},
          animation_speed = 8,
        },
        {
          filename = "__base__/graphics/entity/tank/turret-mask.png",
          line_length = 8,
          width = 38,
          height = 29,
          frame_count = 1,
          apply_runtime_tint = true,
          direction_count = 64,
          shift = {-0.15625, -1.23438},
        },
        {
          filename = "__base__/graphics/entity/tank/turret-shadow.png",
          line_length = 8,
          width = 95,
          height = 67,
          frame_count = 1,
          draw_as_shadow = true,
          direction_count = 64,
          shift = {1.70312, 0.640625},
        }},
},
}
tanksdat_item_vehi={
{name="tank-flame",icon="tank-flame.png",order="b[personal-transport]-b[tank]-c",},
{name="tank-arty",icon="tank-arty.png",order="b[personal-transport]-b[tank]-d",},
{name="tank-auto",icon="tank-auto.png",order="b[personal-transport]-b[tank]-b",},
{name="car-armour",icon="car-armour.png",order="b[personal-transport]-b[tank]-a",},
{name="car-truck",icon="car-truck.png",order="b[personal-transport]-a[car]-a"},
{name="car-amphi",icon="car-truck.png",order="b[personal-transport]-a[car]-b"},
{name="tank-mb",icon="tank-mb.png",order="b[personal-transport]-b[tank]-e"},
}

tanksdat_proj={
{name="autocannon-projectile",
direction_only=true,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=100, -- Cumulative HP of objects the projectile can destroy before stopping. Deals amount of damage defined in "action" to each object. If damage isn't enough to destroy said object, piercing is ignored and projectile is stopped.
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = { amount = 30 , type = "physical"}},
          {type = "damage",damage = { amount = 10 , type = "explosion"}}
        }
      }
    },
final_action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}
        }
      }
    },
},
{name="explosive-autocannon-projectile",
direction_only=false,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=0,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
final_action={type = "area",perimeter=2,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = {amount = 20, type = "explosion"}},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
{name="flakcannon-projectile",
direction_only=false,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=0,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		 {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
final_action={type = "area",perimeter=4,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = {amount = 8, type = "explosion"}},
		  {type = "damage",damage = {amount = 2, type = "impact"}},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
{name="cannon-arty-projectile",
direction_only=false,
collision_box={{0, 0}, {0, 0}},
piercing_damage=0,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
		  {type = "create-entity",entity_name = "big-explosion"},
        }
      }
    },
final_action={type = "area",perimeter=6,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = {amount = 80, type = "explosion"}},
		  {type = "damage",damage = {amount = 80, type = "physical"}},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
{name="explosive-cannon-arty-projectile",
direction_only=false,
collision_box={{0, 0}, {0, 0}},
piercing_damage=0,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
		  {type = "create-entity",entity_name = "medium-explosion"},
		  {type = "create-entity",entity_name = "big-explosion"},
		  {type = "create-entity",entity_name = "massive-explosion"},
        }
      }
    },
final_action={type = "area",perimeter=10,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = {amount = 160, type = "explosion"}},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
{name="mb-apds-projectile",
direction_only=true,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=500, -- Cumulative HP of objects the projectile can destroy before stopping. Deals amount of damage defined in "action" to each object. If damage isn't enough to destroy said object, piercing is ignored and projectile is stopped.
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = { amount = 250 , type = "physical"}},
          {type = "damage",damage = { amount = 100 , type = "impact"}}
        }
      }
    },
final_action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true}
        }
      }
    },
},
{name="mb-heat-projectile",
direction_only=true,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=100,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
          {type = "create-entity",entity_name = "explosion"},
		  {type = "damage",damage = { amount = 50 , type = "physical"}},
          {type = "damage",damage = { amount = 350 , type = "explosion"}}
        }
      }
    },
final_action={type = "area",perimeter=1,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
{name="mb-he-projectile",
direction_only=false,
collision_box={{-0.05, -1.1}, {0.05, 1.1}},
piercing_damage=0,
action={type = "direct",
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
		  {type = "create-entity",entity_name = "small-scorchmark",check_buildability = true},
          {type = "create-entity",entity_name = "big-explosion"},
        }
      }
    },
final_action={type = "area",perimeter=4,
      action_delivery =
      {
        type = "instant",
        target_effects =
        {
          {type = "damage",damage = {amount = 200, type = "explosion"}},
          {type = "create-entity",entity_name = "explosion"},
        }
      }
    },
},
}

gunsdat_item_guns={
--[0]=3, --size (deprecated, now autocheck at the end of this script)
{ --id 1
name="assault-gun", -- Name used in code, not in-game name. Please use Locale for that!
icon="assault-gun.png",
cooldown=5, -- 60/cooldown = RPS; 3600/cooldown = RPM
slowdown=0.8, -- Speed removed when shooting, 1 is complete stop.
range=25, -- Range of weapon.
order="a[basic-clips]-b[submachine-gun]-a",
},
{ -- 2
name="machine-gun",icon="machine-gun.png",
cooldown=3,slowdown=0.85,range=30,
order="a[basic-clips]-b[submachine-gun]-b",
},
{ -- 3, etc
name="gatling-gun",icon="gatling-gun.png",
cooldown=1.5,slowdown=0.95,range=10,
order="a[basic-clips]-b[submachine-gun]-c",
},
}
gunsdat_item_ammo={
{name="hollow-bullet-magazine", icon="hollow-bullet-magazine.png",
damage={
	{type = "damage", damage = { amount = 2 , type = "physical"}},
	{type = "damage", damage = { amount = 2 , type = "impact"}},
},
size=10, -- Magazine size
stack=100, -- Stack size
order="a[basic-clips]-a[basic-bullet-magazine]-a",
},
{name="incendiary-bullet-magazine", icon="incendiary-bullet-magazine.png",
damage={
	{type = "damage", damage = { amount = 2 , type = "explosion"}},
	{type = "damage", damage = { amount = 4 , type = "fire"}},
},
size=8,stack=100,
order="a[basic-clips]-b[piercing-bullet-magazine]-a",
},
{name="explosive-bullet-magazine", icon="explosive-bullet-magazine.png",
damage={
	{type = "damage", damage = { amount = 2 , type = "physical"}},
	{type = "damage", damage = { amount = 6 , type = "explosion"}},
},
size=10,stack=100,
order="a[basic-clips]-b[piercing-bullet-magazine]-b",
},
}

energydat_item={
{name="high-density-solar",icon="dense-solar.png",order="d[solar-panel]-a[solar-panel]-a"},
{name="stacked-density-solar",icon="stacked-solar.png",order="d[solar-panel]-a[solar-panel]-a"},
{name="accumulator2",icon="accumulator2.png",order="e[accumulator]-a[solar-panel]-a"},
}


wallsdat_entity={
--{name="stone-wall",
--health=500,
--resist={
--		{type = "physical",decrease = 3,percent = 20},
--		{type = "impact",decrease = 45,percent = 60},
--		{type = "explosion",decrease = 10,percent = 30},
--		{type = "fire",percent = 100},
--		{type = "laser",percent = 70}},
--
--},

{name="iron-wall",
health=500,
resist={
		{type = "physical",decrease = 15,percent = 30},
		{type = "impact",decrease = 35,percent = 40},
		{type = "explosion",decrease = 15,percent = 40},
		{type = "fire",percent = 100},
		{type = "acid",percent = 5},
		{type = "laser",percent = 80}},

},
{name="concrete-wall",
health=600,
resist={
		{type = "physical",decrease = 10,percent = 25},
		{type = "impact",decrease = 50,percent = 70},
		{type = "explosion",decrease = 10,percent = 30},
		{type = "fire",percent = 100},
		{type = "acid",percent = 30},
		{type = "laser",percent = 30}},

},
{name="plastic-wall",
health=800,
resist={
		{type = "physical",decrease = 10,percent = 15},
		{type = "impact",decrease = 45,percent = 20},
		{type = "explosion",decrease = 40,percent = 70},
		{type = "fire",percent = 60},
		{type = "laser",percent = 90}},

},
{name="composite-wall",
health=1000,
resist={
		{type = "physical",decrease = 20,percent = 50},
		{type = "impact",decrease = 60,percent = 80},
		{type = "explosion",decrease = 20,percent = 60},
		{type = "fire",percent = 95},
		{type = "acid",percent = 10},
		{type = "laser",percent = 50}},

},
}
wallsdat_item={
{name="iron-wall",order="a[wall]-a[stone-wall]-a",},
{name="concrete-wall",order="a[wall]-a[stone-wall]-b",},
{name="plastic-wall",order="a[wall]-a[stone-wall]-c",},
{name="composite-wall",order="a[wall]-a[stone-wall]-d",},
{name="iron-gate",order="a[wall]-b[gate]-a",},
{name="concrete-gate",order="a[wall]-b[gate]-b",},
{name="composite-gate",order="a[wall]-b[gate]-c",},
}

gatesdat_entity={
--{name="stone-gate",
--health=500,
--resist={
--		{type = "physical",decrease = 3,percent = 20},
--		{type = "impact",decrease = 45,percent = 60},
--		{type = "explosion",decrease = 10,percent = 30},
--		{type = "fire",percent = 100},
--		{type = "laser",percent = 70}},
--
--},

{name="iron-gate",
health=500,
resist={
		{type = "physical",decrease = 15,percent = 30},
		{type = "impact",decrease = 35,percent = 40},
		{type = "explosion",decrease = 15,percent = 40},
		{type = "fire",percent = 100},
		{type = "laser",percent = 80}},

},
{name="concrete-gate",
health=600,
resist={
		{type = "physical",decrease = 10,percent = 25},
		{type = "impact",decrease = 50,percent = 70},
		{type = "explosion",decrease = 10,percent = 30},
		{type = "fire",percent = 100},
		{type = "laser",percent = 30}},

},
{name="composite-gate",
health=1000,
resist={
		{type = "physical",decrease = 20,percent = 50},
		{type = "impact",decrease = 60,percent = 80},
		{type = "explosion",decrease = 20,percent = 60},
		{type = "fire",percent = 95},
		{type = "laser",percent = 50}},

},
}


alldat_rec={
---- Tanks
{result="tank-flame", -- Note in my case, result name and recipe name are the same!
energy=0.5, -- Energy required to craft
ingredients={{"engine-unit", 16},{"steel-plate", 50},{"iron-gear-wheel", 15},{"advanced-circuit", 5},{"flame-thrower", 4}},
},
{result="tank-arty",energy=0.5,
ingredients={{"engine-unit", 10},{"steel-plate", 50},{"iron-gear-wheel", 30},{"advanced-circuit", 10},},
},
{result="tank-auto",energy=0.5,
ingredients={{"engine-unit", 18},{"steel-plate", 50},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-armour",energy=0.5,
ingredients={{"engine-unit", 14},{"iron-plate", 30},{"steel-plate", 20},{"iron-gear-wheel", 20},{"advanced-circuit", 5},},
},
{result="car-truck",energy=0.5,
ingredients={{"engine-unit", 12},{"iron-plate", 40},{"iron-gear-wheel", 10},},
},
{result="tank-flame-ammo",energy=1,
ingredients={{"flame-thrower-ammo", 2},{"iron-plate", 1},},
},
{result="autocannon-shell",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 1},},
},
{result="explosive-autocannon-shell",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="cannon-shell-arty",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 2},},
},
{result="explosive-cannon-shell-arty",energy=8,
ingredients={{"steel-plate", 5},{"plastic-bar", 2},{"explosives", 4},},
},
{result="flakcannon-shell",energy=8,
ingredients={{"steel-plate", 2},{"plastic-bar", 2},{"explosives", 5},},
},
{result="car-amphi",energy=0.5,
ingredients={{"engine-unit", 10},{"iron-plate", 30},{"iron-gear-wheel", 40},},
},
{result="tank-mb",
energy=0.5, 
ingredients={{"engine-unit", 26},{"steel-plate", 100},{"iron-gear-wheel", 50},{"processing-unit", 10},},
},
{result="mb-apds",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 1},},
},
{result="mb-heat",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 3},},
},
{result="mb-he",energy=10,
ingredients={{"steel-plate", 8},{"plastic-bar", 4},{"explosives", 4},},
},
---- Guns
{result="hollow-bullet-magazine",
energy=3,
ingredients={{"copper-plate", 2},{"iron-plate", 2}},
},
{result="incendiary-bullet-magazine",energy=5,
ingredients={{"copper-plate", 5},{"coal", 2}},
},
{result="explosive-bullet-magazine",energy=8,
ingredients={{"copper-plate", 5},{"steel-plate", 1},{"explosives", 2}},
},
{result="machine-gun",energy=8,
ingredients={{"iron-gear-wheel", 20},{"copper-plate", 10},{"iron-plate", 15}},
},
{result="assault-gun",energy=5,
ingredients={{"iron-gear-wheel", 15},{"copper-plate", 10},{"iron-plate", 10}},
},
{result="gatling-gun",energy=10,
ingredients={{"iron-gear-wheel", 40},{"copper-plate", 15},{"iron-plate", 15},{"engine-unit", 1}},
},
---- Energy
{result="high-density-solar",
energy=10,
ingredients={{"steel-plate", 8},{"advanced-circuit", 10},{"copper-plate", 8}},
},
{result="stacked-density-solar",
energy=10,
ingredients={{"steel-plate", 4},{"high-density-solar", 1},{"solar-panel", 1},{"processing-unit", 2}},
},
{result="accumulator2",
energy=10,
ingredients={{"basic-accumulator", 2},{"advanced-circuit", 2}},
},
---- Walls
{result="iron-wall",
energy=0.5,
ingredients={{"iron-plate", 10},{"copper-plate", 1}},
},
{result="concrete-wall",
energy=0.5,
ingredients={{"concrete", 10},{"steel-plate", 1}},
},
{result="plastic-wall",
energy=0.5,
ingredients={{"plastic-bar", 20},{"iron-plate", 1}},
},
{result="composite-wall",
energy=0.5,
ingredients={{"plastic-wall", 1},{"concrete-wall", 1},{"iron-wall", 1}},
},
{result="iron-gate",
energy=0.5,
ingredients = {{"iron-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
{result="concrete-gate",
energy=0.5,
ingredients = {{"concrete-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
{result="composite-gate",
energy=0.5,
ingredients = {{"composite-wall", 1}, {"steel-plate", 2}, {"electronic-circuit", 2}},
},
}

alldat_tech={
{name="cooling",icon=modname.."/graphics/technology/cooling.png",
effects={
		{type = "unlock-recipe",recipe = "assault-gun"},
		{type = "unlock-recipe",recipe = "machine-gun"},
		{type = "unlock-recipe",recipe = "gatling-gun"}
		},
prereq={"military-2", "engine"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1}},
count=30,time_r=20,
order="e-c-b-a",
},
{name="ballistics",icon=modname.."/graphics/technology/ballistics.png",
effects={
		{type = "unlock-recipe",recipe = "hollow-bullet-magazine"},
		{type = "unlock-recipe",recipe = "incendiary-bullet-magazine"},
		{type = "unlock-recipe",recipe = "explosive-bullet-magazine"}
		},
prereq={"bullet-damage-1","bullet-speed-2", "military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1}},
count=50,time_r=30,
order="e-c-b-b",
},
{name="combined",icon=modname.."/graphics/technology/combined.png",
effects={
		{type = "unlock-recipe",recipe = "tank-flame"},
		{type = "unlock-recipe",recipe = "tank-auto"},
		{type = "unlock-recipe",recipe = "tank-flame-ammo"},
		{type = "unlock-recipe",recipe = "autocannon-shell"},
		{type = "unlock-recipe",recipe = "explosive-autocannon-shell"},
		{type = "unlock-recipe",recipe = "flakcannon-shell"},
		},
prereq={"military-4","tanks","transport"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
count=30,time_r=30,
order="e-c-c-a",
},
{name="advancedopt",icon=modname.."/graphics/technology/advanced_optics.png",
effects={
		{type = "unlock-recipe",recipe = "tank-arty"},
		{type = "unlock-recipe",recipe = "cannon-shell-arty"},
		{type = "unlock-recipe",recipe = "explosive-cannon-shell-arty"},
		},
prereq={"military-4","tanks"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1}},
count=20,time_r=30,
order="a-h-b",
},
{name="transport",icon=modname.."/graphics/technology/transportation.png",
effects={
		{type = "unlock-recipe",recipe = "car-armour"},
		{type = "unlock-recipe",recipe = "car-truck"},
		},
prereq={"automobilism", "military-2"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=50,time_r=30,
order="e-c-b-x",
},
{name="dense-solar",icon=modname.."/graphics/technology/dense-solar.png",
effects={
		{type = "unlock-recipe",recipe = "high-density-solar"},
		},
prereq={"advanced-electronics-2","solar-energy","laser"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=100,time_r=40,
order="a-h-d",
},
{name="stacked-solar",icon=modname.."/graphics/technology/stacked-solar.png",
effects={
		{type = "unlock-recipe",recipe = "stacked-density-solar"},
		},
prereq={"advancedopt","dense-solar",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},},
count=100,time_r=50,
order="a-h-e",
},
{name="fluid-dynamics",icon=modname.."/graphics/technology/amphi.png",
effects={
		{type = "unlock-recipe",recipe = "car-amphi"},
		},
prereq={"automobilism","fluid-handling",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=40,time_r=20,
order="e-c-b-z",
},
{name="adv-fort",icon=modname.."/graphics/technology/adv-walls.png",
effects={
		{type = "unlock-recipe",recipe = "iron-wall"},
		{type = "unlock-recipe",recipe = "concrete-wall"},
		{type = "unlock-recipe",recipe = "plastic-wall"},
		{type = "unlock-recipe",recipe = "iron-gate"},
		{type = "unlock-recipe",recipe = "concrete-gate"},
		},
prereq={"advanced-material-processing-2","stone-walls","gates"},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=100,time_r=20,
order="a-l-b",
},
{name="composite-materials",icon=modname.."/graphics/technology/composite.png",
effects={
		{type = "unlock-recipe",recipe = "composite-wall"},
		{type = "unlock-recipe",recipe = "composite-gate"},
		},
prereq={"adv-fort",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=250,time_r=30,
order="a-l-c",
},

{name="adv-battery",icon=modname.."/graphics/technology/battery2.png",
effects={
		{type = "unlock-recipe",recipe = "accumulator2"},
		},
prereq={"electric-energy-accumulators-1","advanced-electronics",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},},
count=100,time_r=30,
order="b-c-a",
},
{name="mbt",icon=modname.."/graphics/technology/tank-mb.png",
effects={
		{type = "unlock-recipe",recipe = "tank-mb"},
		{type = "unlock-recipe",recipe = "mb-apds"},
		{type = "unlock-recipe",recipe = "mb-heat"},
		{type = "unlock-recipe",recipe = "mb-he"},
		},
prereq={"advanced-electronics-2","advancedopt","combined",},
ingredients={{"science-pack-1", 1},{"science-pack-2", 1},{"science-pack-3", 1},},
count=100,time_r=40,
order="e-c-c-b",
},
}


gunsdat_item_guns[0]=#gunsdat_item_guns
gunsdat_item_ammo[0]=#gunsdat_item_ammo
--alldat_cat[0]=#alldat_cat


tanksdat_item_vehi[0]=#tanksdat_item_vehi
tanksdat_vehi[0]=#tanksdat_vehi
tanksdat_proj[0]=#tanksdat_proj

energydat_item[0]=#energydat_item

wallsdat_entity[0]=#wallsdat_entity
wallsdat_item[0]=#wallsdat_item

gatesdat_entity[0]=#gatesdat_entity

alldat_rec[0]=#alldat_rec
alldat_tech[0]=#alldat_tech
