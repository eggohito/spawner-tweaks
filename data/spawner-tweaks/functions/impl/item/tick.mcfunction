#> spawner-tweaks:impl/item/tick
#
#   > Tick the item entity that has the `{Item: {tag: {spawner_tweaks: {placeholder: 1b}}}}` NBT
#
#@within function spawner-tweaks:private/tick


#   Add a temporary tag
tag @s add spawner_tweaks.selected.placeholder_item


#   Process the `Item.tag.spawner_tweaks` NBT of the item entity if it has the `Item.tag.spawner_tweaks.ToBeProcessed` NBT byte
execute if data entity @s {Item: {tag: {spawner_tweaks: {ToBeProcessed: 1b}}}} run function spawner-tweaks:impl/item/process/start


#   Check if there are triggered Dispensers nearby and if there are empty Minecarts at the same position as the item entity
execute if data entity @s {Age: 1s} if predicate spawner-tweaks:item/dispensed as @e[type = minecraft:minecart, predicate = spawner-tweaks:minecart/vehicle/no_passengers, distance = ..0.8, limit = 1] at @s run function spawner-tweaks:impl/minecart/process/start


#   Remove the temporary tag
tag @s remove spawner_tweaks.selected.placeholder_item
