function checkGenerators(typetable)
  	for k,gen in pairs(typetable) do
      	if k*5 % 60 == game.tick % 60 and gen.valid then
		--game.players[1].print(k)
         	if gen.fluidbox[1] ~= nil then 
				local pot = gen.fluidbox[1]
				local type
				pot.amount = 10				
				
				if typetable == global.generator.tidal then
				  pot.temperature = 100*(nature.getTide(game.tick))
				  type="Tidal"
				
				elseif typetable == global.generator.wind then
          pot.temperature = 100*(nature.getTide(game.tick))
          type="Wind"
        
				else
          pot.temperature = 0
          type="Error"
        end
				
				if MODdebug~=nil then print("Debug : Tick "..game.tick..", "..type.." Generator "..k..", Temperature: "..pot.temperature) end
				
				gen.fluidbox[1] = pot		
									
			elseif time_to_live ~= nil then
				table.remove(typetable, k)		
			end				
		end
	end
end

--Using derivatives as a smoother way to find tides, not yet complete
--[[function checkGenerators(typetable)
  	for k,gen in pairs(typetable) do
      	if k*5 % 60 == game.tick % 60 and gen.valid then
		game.players[1].print(k)
         	if gen.fluidbox[1] ~= nil then 
				local pot = gen.fluidbox[1]
				pot.amount = 10				
				pot.temperature = pot.temperature+global.dv
				gen.fluidbox[1] = pot							
			elseif time_to_live ~= nil then
				table.remove(typetable, k)		
			end				
		end
	end
end]]

--[[function updateDv()
	global.dv = getTide()
end]]