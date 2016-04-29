require("config")

require("data_paths")
require("prototypes.categories")

if enable_guns or enable_vehicles_civilian or enable_vehicles_military then
require("prototypes.item.item_gun")
require("prototypes.item.item_ammo")
require("prototypes.item.item_vehicle")
require("prototypes.entity.entity_vehicle")
require("prototypes.entity.entity_projectile")
require("prototypes.recipe.recipe_military")
end

if enable_energy then
require("prototypes.item.item_energy")
require("prototypes.entity.entity_energy")
require("prototypes.recipe.recipe_energy")
end

if enable_defense then
require("prototypes.item.item_defense")
require("prototypes.entity.entity_defense")
require("prototypes.recipe.recipe_defense")
end

require("prototypes.technology")

--require("prototypes.wip.item_airplane")
--require("prototypes.wip.entity_airplane")

