#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop
#
#   > Loop through the `SpawnPotentials` NBT of the Barrel placeholder item
#
#@within
#   function spawner-tweaks:impl/spawner/item/process/spawn_potentials/start
#   function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop


#   Check if the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage have custom spawn rules defined. If it does, display those underneath the ID/Name of the entity
execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.block_light_limit run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/prepend/block_light_limit

execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.sky_light_limit run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/prepend/sky_light_limit


#   Check how many NBTs are present in the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage
execute store result score #entity_nbts spawner-tweaks run data get storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity

scoreboard players remove #entity_nbts spawner-tweaks 1


#   Check if the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage have NBTs defined. If it does, display those underneath the ID/Name of the entity
execute if score #entity_nbts spawner-tweaks matches 1.. run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/prepend/entity_nbts


#   If the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage has a `CustomName` NBT, use that. Otherwise, use the `id`
execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity.CustomName run data modify block -30000000 0 1603 Text1 set value '{"translate": " @ %1$s%2$s%3$s", "color": "gray", "italic": false, "with": [{"text": "\\"", "italic": true}, {"storage": "spawner:tweaks", "nbt": "temp.process.input.SpawnPotentials[-1].data.entity.CustomName", "interpret": true, "italic": true}, {"text": "\\"", "italic": true}]}'

execute unless data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity.CustomName run data modify block -30000000 0 1603 Text1 set value '{"translate": " @ %1$s%2$s%3$s", "color": "gray", "italic": false, "with": [{"text": "\\"", "italic": false}, {"storage": "spawner:tweaks", "nbt": "temp.process.input.SpawnPotentials[-1].data.entity.id"}, {"text": "\\"", "italic": false}]}'


#   Prepend the string from the `Text1` NBT of the MinecraftPhi's Oak Wall Sign
data modify storage spawner:tweaks temp.process.output prepend from block -30000000 0 1603 Text1


#   Remove the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage
data remove storage spawner:tweaks temp.process.input.SpawnPotentials[-1]


#   Loop this function until there's no more elements to process in the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command storage
execute store result score #current_spawn_potentials spawner-tweaks if data storage spawner:tweaks temp.process.input.SpawnPotentials[]

execute if score #current_spawn_potentials spawner-tweaks matches ..0 run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/end

execute if score #current_spawn_potentials spawner-tweaks matches 1.. run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop
