script.on_init(function()

for i, player in ipairs(game.players) do 
player.force.reset_recipes() 
player.force.reset_technologies()
end

end)

script.on_load(function()

for i, player in ipairs(game.players) do 
player.force.reset_recipes() 
player.force.reset_technologies()
end

end)