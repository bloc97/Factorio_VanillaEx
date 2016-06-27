data.raw["car"]={}
data.raw["car"]["tank"]={minable={},burner={}}

data.raw["projectile"]={}
data.raw["projectile"]["cannon-projectile"]={}

layerstemplate={layers={[1]={filename={}}}}

walltemplate={minable={},pictures={}}
walltemplate.pictures.single=layerstemplate
walltemplate.pictures.straight_vertical={[1]=layerstemplate,[2]=layerstemplate,[3]=layerstemplate}
walltemplate.pictures.straight_horizontal={[1]=layerstemplate,[2]=layerstemplate,[3]=layerstemplate}
walltemplate.pictures.corner_right_down=layerstemplate
walltemplate.pictures.corner_left_down=layerstemplate
walltemplate.pictures.t_up=layerstemplate
walltemplate.pictures.ending_right=layerstemplate
walltemplate.pictures.ending_left=layerstemplate

data.raw["wall"]={}
data.raw["wall"]["stone-wall"]=walltemplate

gatetemplate={minable={}}
gatetemplate.vertical_animation=layerstemplate
gatetemplate.horizontal_animation=layerstemplate
gatetemplate.horizontal_rail_animation_left=layerstemplate
gatetemplate.horizontal_rail_animation_right=layerstemplate
gatetemplate.vertical_rail_animation_left=layerstemplate
gatetemplate.vertical_rail_animation_right=layerstemplate

data.raw["gate"]={}
data.raw["gate"]["gate"]=gatetemplate