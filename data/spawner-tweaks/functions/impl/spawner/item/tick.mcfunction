#> spawner-tweaks:impl/spawner/item/tick
#
#   > Tick the Barrel placeholder items
#
#@within function spawner-tweaks:private/tick


#   Add a tag to target the current Barrel placeholder item in context where the executor is changed
tag @s add spawner_tweaks.selected.placeholder_item


#   Process the Barrel item placeholder if it has the `spawner_tweaks.ToBeProcessed` NBT
execute if data entity @s {Item: {tag: {spawner_tweaks: {ToBeProcessed: 1b}}}} run function spawner-tweaks:impl/spawner/item/process


#   Check if there are triggered Dispensers nearby and if there are Minecarts that have no passengers at the same position. If true, replace the Minecart entity with a Spawner Minecart entity
execute store result score #selected.placeholder_item.age spawner-tweaks run data get entity @s Age

execute if score #selected.placeholder_item.age spawner-tweaks matches 1 if predicate spawner-tweaks:item/dispensed as @e[type = minecraft:minecart, predicate = spawner-tweaks:minecart/vehicle/no_passengers, distance = ..0.8, limit = 1] at @s run function spawner-tweaks:impl/spawner/minecart/summon


#   Remove the tag
tag @s remove spawner_tweaks.selected.placeholder_item
