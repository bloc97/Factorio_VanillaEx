for index, force in pairs(game.forces) do
  local technologies = force.technologies
  local recipes = force.recipes

  if technologies["nuclear-power"].researched then
    recipes["radioisotope-generator"].enabled = true
  end
  
  if technologies["fluid-handling"].researched then
    recipes["fill-nitrogen-barrel"].enabled = true
    recipes["empty-nitrogen-barrel"].enabled = true
    recipes["fill-oxygen-barrel"].enabled = true
    recipes["empty-oxygen-barrel"].enabled = true
    recipes["fill-heavywater-barrel"].enabled = true
    recipes["empty-heavywater-barrel"].enabled = true
    recipes["fill-superheavywater-barrel"].enabled = true
    recipes["empty-superheavywater-barrel"].enabled = true
    recipes["fill-hydrogen-barrel"].enabled = true
    recipes["empty-hydrogen-barrel"].enabled = true
  end
  
  if technologies["cannon-shell-damage-1"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 0.2)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 0.2)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 0.2)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 0.2)
  end
  if technologies["cannon-shell-damage-2"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 0.2)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 0.2)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 0.2)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 0.2)
  end
  if technologies["cannon-shell-damage-3"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 0.3)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 0.3)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 0.3)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 0.3)
  end
  if technologies["cannon-shell-damage-4"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 0.5)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 0.5)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 0.5)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 0.5)
  end
  if technologies["cannon-shell-damage-5"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 1)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 1)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 1)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 1)
  end
  if technologies["cannon-shell-damage-6"].researched then
	force.set_ammo_damage_modifier("autocannon-shell" , force.get_ammo_damage_modifier("autocannon-shell") + 1)
	force.set_ammo_damage_modifier("flakcannon-shell" , force.get_ammo_damage_modifier("flakcannon-shell") + 1)
	force.set_ammo_damage_modifier("arty-shell" , force.get_ammo_damage_modifier("arty-shell") + 1)
	force.set_ammo_damage_modifier("mb-cannon-shell" , force.get_ammo_damage_modifier("mb-cannon-shell") + 1)
  end
  
  if technologies["cannon-shell-speed-1"].researched then
	force.set_gun_speed_modifier("autocannon-shell" , force.get_gun_speed_modifier("autocannon-shell") + 0.2)
	force.set_gun_speed_modifier("flakcannon-shell" , force.get_gun_speed_modifier("flakcannon-shell") + 0.2)
	force.set_gun_speed_modifier("arty-shell" , force.get_gun_speed_modifier("arty-shell") + 0.2)
	force.set_gun_speed_modifier("mb-cannon-shell" , force.get_gun_speed_modifier("mb-cannon-shell") + 0.2)
  end
  if technologies["cannon-shell-speed-2"].researched then
	force.set_gun_speed_modifier("autocannon-shell" , force.get_gun_speed_modifier("autocannon-shell") + 0.2)
	force.set_gun_speed_modifier("flakcannon-shell" , force.get_gun_speed_modifier("flakcannon-shell") + 0.2)
	force.set_gun_speed_modifier("arty-shell" , force.get_gun_speed_modifier("arty-shell") + 0.2)
	force.set_gun_speed_modifier("mb-cannon-shell" , force.get_gun_speed_modifier("mb-cannon-shell") + 0.2)
  end
  if technologies["cannon-shell-speed-3"].researched then
	force.set_gun_speed_modifier("autocannon-shell" , force.get_gun_speed_modifier("autocannon-shell") + 0.3)
	force.set_gun_speed_modifier("flakcannon-shell" , force.get_gun_speed_modifier("flakcannon-shell") + 0.3)
	force.set_gun_speed_modifier("arty-shell" , force.get_gun_speed_modifier("arty-shell") + 0.3)
	force.set_gun_speed_modifier("mb-cannon-shell" , force.get_gun_speed_modifier("mb-cannon-shell") + 0.3)
  end
  if technologies["cannon-shell-speed-4"].researched then
	force.set_gun_speed_modifier("autocannon-shell" , force.get_gun_speed_modifier("autocannon-shell") + 0.6)
	force.set_gun_speed_modifier("flakcannon-shell" , force.get_gun_speed_modifier("flakcannon-shell") + 0.6)
	force.set_gun_speed_modifier("arty-shell" , force.get_gun_speed_modifier("arty-shell") + 0.6)
	force.set_gun_speed_modifier("mb-cannon-shell" , force.get_gun_speed_modifier("mb-cannon-shell") + 0.6)
  end
  if technologies["cannon-shell-speed-5"].researched then
	force.set_gun_speed_modifier("autocannon-shell" , force.get_gun_speed_modifier("autocannon-shell") + 1)
	force.set_gun_speed_modifier("flakcannon-shell" , force.get_gun_speed_modifier("flakcannon-shell") + 1)
	force.set_gun_speed_modifier("arty-shell" , force.get_gun_speed_modifier("arty-shell") + 1)
	force.set_gun_speed_modifier("mb-cannon-shell" , force.get_gun_speed_modifier("mb-cannon-shell") + 1)
  end
  
end