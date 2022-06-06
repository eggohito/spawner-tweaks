#> spawner-tweaks:private/tick
#
#@within
#   function spawner-tweaks:private/load
#   function spawner-tweaks:private/tick


#   Check if any of the config flags have values that are not within their minimum and maximum value range
function spawner-tweaks:impl/config/tick


#   Tick the Barrel placeholder items
execute as @e[type = minecraft:item, nbt = {Item: {tag: {spawner_tweaks: {placeholder: 1b}}}}] at @s run function spawner-tweaks:impl/spawner/item/tick


#   If the Spawner Minecart was destroyed, spawn a Spawner item and kill the passenger marker entity
execute as @e[type = minecraft:marker, tag = spawner_tweaks.passenger.spawner_minecart, predicate = spawner-tweaks:minecart/passenger/no_vehicle] at @s run function spawner-tweaks:impl/spawner/minecart/destroyed


#   Loop this function
schedule function spawner-tweaks:private/tick 1t
