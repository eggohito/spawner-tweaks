#> spawner-tweaks:impl/minecart/process/start
#
#@within function spawner-tweaks:impl/item/tick


#   Get the copied Spawner data from the Barrel item entity
data modify storage spawner:tweaks temp.spawner set from entity @e[type = minecraft:item, tag = spawner_tweaks.selected.placeholder_item, limit = 1] Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks


#   Summon a new Spawner Minecart entity
summon minecraft:spawner_minecart ~ ~ ~ {Tags: ["spawner_tweaks.vehicle.spawner_minecart"], Passengers: [{id: "minecraft:marker", Tags: ["spawner_tweaks.passenger.spawner_minecart"]}]}


#   Process the newly summoned Spawner Minecart entity and its passenger
data modify entity @e[type = minecraft:spawner_minecart, tag = spawner_tweaks.vehicle.spawner_minecart, limit = 1] Motion set from entity @s Motion

execute as @e[type = minecraft:spawner_minecart, tag = spawner_tweaks.vehicle.spawner_minecart] run function spawner-tweaks:impl/minecart/process/end


#   Do some clean up
kill @s

data remove storage spawner:tweaks temp

tag @e remove spawner_tweaks.vehicle.spawner_minecart

kill @e[type = minecraft:item, tag = spawner_tweaks.selected.placeholder_item]
