#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/end
#
#   > End the looping process
#
#@within function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop


#   Determine whether to use "Spawn data:" or "Spawn potentials:" depending on how many elements are in the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage
execute if score #spawn_potentials spawner-tweaks matches 1 run data modify block -30000000 0 1603 Text1 set value '{"text": "Spawn data:", "color": "gold", "italic": false}'

execute if score #spawn_potentials spawner-tweaks matches 2.. run data modify block -30000000 0 1603 Text1 set value '{"text": "Spawn potentials:", "color": "gold", "italic": false}'

data modify storage spawner:tweaks temp.process.output prepend from block -30000000 0 1603 Text1


data modify block -30000000 0 1603 Text1 set value '{"text": ""}'

data modify storage spawner:tweaks temp.process.output prepend from block -30000000 0 1603 Text1
