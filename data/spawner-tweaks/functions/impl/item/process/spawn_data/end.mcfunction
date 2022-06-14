#> spawner-tweaks:impl/item/process/spawn_data/end
#
#   > End processing the `temp.spawner.SpawnData` and `temp.spawner.SpawnPotentials` NBTs of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_data/start


#   Remove the `temp.spawner.SpawnData` NBT if the score of the `randomize_spawn_data` score holder in the `spawner-tweaks` scoreboard objective is 1
execute if score randomize_spawn_data spawner-tweaks matches 1 run data remove storage spawner:tweaks temp.spawner.SpawnData


#   Copy the `temp.process.output` NBT to the `temp.spawner` NBT of the `spawner:tweaks` command NBT storage
execute if data storage spawner:tweaks temp.process.output.SpawnPotentials[] run data modify storage spawner:tweaks temp.spawner.SpawnPotentials append from storage spawner:tweaks temp.process.output.SpawnPotentials[]


#   Do some clean up
data remove storage spawner:tweaks temp.process.output
