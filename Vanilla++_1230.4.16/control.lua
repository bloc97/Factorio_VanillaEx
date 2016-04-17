require "defines"
require "util"


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
  	    for k,oldent in pairs(global.airplane) do
				if oldent.valid then
         			if oldent.speed ~= nil then 
					
							if oldent.speed > (0.22+0.01) then
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname.."2"

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
							
							if global.airplane2 == nil
							then global.airplane2 = {}
							end
							table.insert(global.airplane2, newent)
							
							end
							
					else table.remove(global.airplane, k)
					end				
				end

		end
	end
	
	
	
	   if global.airplane2 ~= nil then
	   local oldent
  	    for l,oldent in pairs(global.airplane2) do
				if oldent.valid then
         			if oldent.speed ~= nil then 
					
					
							if oldent.speed > (0.30+0.01) then
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname.."3"

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
							
							if global.airplane3 == nil
							then global.airplane3 = {}
							end
							table.insert(global.airplane3, newent)
							
					
							else if oldent.speed < (0.22-0.01) then
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname.."1"

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
							
					else table.remove(global.airplane2, k)
					end				
				end

		end
	end
	
	if global.airplane3 ~= nil then
		   local oldent
  	    for m,oldent in pairs(global.airplane3) do
				if oldent.valid then
         			if oldent.speed ~= nil then 
					
					
							if oldent.speed < (0.30-0.01) then
						
							local oldent_dir=oldent.direction
							local oldent_pos=oldent.position
							local oldent_pass=oldent.passenger
							local oldent_health=oldent.health
							local oldent_orien=oldent.orientation
							local oldent_speed=oldent.speed
							
							local fuel_contents=oldent.get_inventory(defines.inventory.fuel).get_contents()
							local chest_contents=oldent.get_inventory(defines.inventory.chest).get_contents()	

							local oldname=string.sub(oldent.name, 1, -2)
							local newname=oldname.."2"

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
							
							if global.airplane2 == nil
							then global.airplane2 = {}
							end
							table.insert(global.airplane2, newent)
							
							end

							
					else table.remove(global.airplane3, k)
					end				
				end

		end
	end
	
	
	
end

		
