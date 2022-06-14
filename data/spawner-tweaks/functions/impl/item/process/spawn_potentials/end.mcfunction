#> spawner-tweaks:impl/item/process/spawn_potentials/end
#
#   > End processing the `temp.spawner.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_potentials/loop


#   Determine whether to use "Spawn data" or "Spawn potentials" depending on the size of the `temp.spawner.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
execute if score #spawn_potentials spawner-tweaks matches 1 run data modify block -30000000 0 1603 Text1 set value '{"text": "Spawn data:", "color": "gold", "italic": false}'

execute if score #spawn_potentials spawner-tweaks matches 2.. run data modify block -30000000 0 1603 Text1 set value '{"text": "Spawn potentials:", "color": "gold", "italic": false}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1


#   Prepend an empty line to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
data modify block -30000000 0 1603 Text1 set value '{"text": ""}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1


#   Prepend a translatable string to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
data modify block -30000000 0 1603 Text1 set value '{"translate": "Places a Spawner block", "color": "gray", "italic": false}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1


#   Set the `Item.tag.display.Lore` of the item entity to have the value of the `temp.process.output.Lore` NBT from the `spawner:tweaks` command NBT storage
data modify entity @s Item.tag.display.Lore set from storage spawner:tweaks temp.process.output.Lore


#   Do some clean up
data remove storage spawner:tweaks temp.process.output
