require "defines"
require "util"

global.entitynames={"seaplane"}
global.seaplanevalues={0.22, 0.3, 90}
global.seaplanevalues[0]=-100



script.on_event(defines.events.on_tick, function(event)
	check_speed()
end)

script.on_event(defines.events.on_built_entity, function(event)
if event.created_entity.name == "seaplane_u1" then	
		local seaplane = event.created_entity
		if global.airplane == nil
			then global.airplane = {}
		end
		table.insert(global.airplane, seaplane)
	end
end)



function check_speed()
	if global.airplane ~= nil then
		local oldent
		for x=1,3 do
  	    for k,oldent in pairs(global.airplane) do
			if oldent.valid then


						if oldent.name ~= nil then
						local name_len = string.len(oldent.name)
						local name_num_str = string.sub(oldent.name, name_len, -1 )
						local name_num = tonumber(name_num_str)
						local name_str = string.sub(oldent.name, 1, -4)
						
						
						if name_str == "seaplane" then
						speedtable = global.seaplanevalues
						game.players[1].print("Loaded Global.Seaplanevalues")
						end
						
						if name_num == x then
						game.players[1].print("Found Number "..x)
						
						if oldent.speed ~= nil then
					
						if oldent.speed >= (speedtable[x]) then
						game.players[1].print("Found Bigger Speed")
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname..(x+1)

							oldent.destroy()

							local newent = game.get_surface(1).create_entity{name=newname, position=oldent_pos, direction=oldent_dir}
							
							newent.passenger=oldent_pass
							newent.health=oldent_health
							newent.orientation=oldent_orien
							newent.speed=oldent_speed

							
							for item_name,item_count in pairs(fuel_contents) do
							newent.get_inventory(defines.inventory.fuel).insert{name=item_name, count=item_count}
							end
							for item_name,item_count in pairs(chest_contents) do
							newent.get_inventory(defines.inventory.chest).insert{name=item_name, count=item_count}
							end
							
							if global.airplane == nil
								then global.airplane = {}
							end
							table.insert(global.airplane, newent)
							
							else if oldent.speed < (speedtable[x-1]-0.005) then
							game.players[1].print("Found Smaller Speed")
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname..(x-1)

							oldent.destroy()

							local newent = game.get_surface(1).create_entity{name=newname, position=oldent_pos, direction=oldent_dir}
							
							newent.passenger=oldent_pass
							newent.health=oldent_health
							newent.orientation=oldent_orien
							newent.speed=oldent_speed

							
							for item_name,item_count in pairs(fuel_contents) do
							newent.get_inventory(defines.inventory.fuel).insert{name=item_name, count=item_count}
							end
							for item_name,item_count in pairs(chest_contents) do
							newent.get_inventory(defines.inventory.chest).insert{name=item_name, count=item_count}
							end
							
							if global.airplane == nil
							then global.airplane = {}
							end
							table.insert(global.airplane, newent)
							
							end
							
							
							end
							
					else table.remove(global.airplane, k)
					end		
				
				
				end
				
				end
				end

			end
		end
	end
	
	
	
	
end

		
