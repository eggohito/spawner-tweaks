#> spawner-tweaks:impl/spawner/item/tick
#
#   > Tick the Barrel placeholder items
#
#@within function spawner-tweaks:private/tick


#   Process the Barrel item placeholder if it has the `spawner_tweaks.ToBeProcessed` NBT
execute if data entity @s {Item: {tag: {spawner_tweaks: {ToBeProcessed: 1b}}}} run function spawner-tweaks:impl/spawner/item/process
