#> spawner-tweaks:impl/item/process/spawn_potentials/loop
#
#   > Iterate through the `temp.process.input.SpawnPotentials` NBT list of the `spawner:tweaks` command NBT storage
#
#@within
#   function spawner-tweaks:impl/item/process/spawn_potentials/start
#   function spawner-tweaks:impl/item/process/spawn_potentials/loop


#   Check if the last element of the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage have custom spawn rules defined. If it does, prepend those to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.block_light_limit run function spawner-tweaks:impl/item/process/lore/prepend/block_light_limit

execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.sky_light_limit


#   Count how many NBTs are present in the last element of the `temp.process.input.SpawnPotentials` NBT list of the `spawner:tweaks` command NBT storage
execute store result score #temp.entity.nbts spawner-tweaks run data get storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity

scoreboard players remove #temp.entity.nbts spawner-tweaks 1


#   Check if the last element of the `temp.process.input.SpawnPotentials` NBT list of the `spawner:tweaks` command NBT storage have NBTs defined. If it does, prepend the count of the NBTs defined to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
execute if score #temp.entity.nbts spawner-tweaks matches 1.. run function spawner-tweaks:impl/item/process/lore/prepend/entity/nbts


#   Check if the last element of the `temp.process.input.SpawnPotentials` NBT list of the `spawner:tweaks` command NBT storage has a custom name. If it does, resolve the custom name and prepend it to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage. Otherwise, prepend the ID instead
execute if data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity.CustomName run function spawner-tweaks:impl/item/process/lore/prepend/entity/custom_name

execute unless data storage spawner:tweaks temp.process.input.SpawnPotentials[-1].data.entity.CustomName run function spawner-tweaks:impl/item/process/lore/prepend/entity/id


#   Remove the last element from the `temp.process.input.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
data remove storage spawner:tweaks temp.process.input.SpawnPotentials[-1]


#   Loop this function until there are no more elements to process in the `temp.process.input.SpawnPotentials` NBT list of the `spawner:tweaks` command NBT storage
execute store result score #input.elements spawner-tweaks if data storage spawner:tweaks temp.process.input.SpawnPotentials[]

execute if score #input.elements spawner-tweaks matches ..0 run function spawner-tweaks:impl/item/process/spawn_potentials/end

execute if score #input.elements spawner-tweaks matches 1.. run function spawner-tweaks:impl/item/process/spawn_potentials/loop
