#> spawner-tweaks:impl/item/process/spawn_data/start
#
#   > Process the `temp.spawner.SpawnData` and the `temp.spawner.SpawnPotentials` NBTs of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/start


#   Copy the `temp.spawner` NBT to the `temp.process.input` NBT in the `spawner:tweaks` command NBT storage
data modify storage spawner:tweaks temp.process.input set from storage spawner:tweaks temp.spawner


#   Append the `temp.process.input.SpawnData` NBT to the `temp.process.output.SpawnPotentials` NBT if the `temp.process.input.SpawnPotentials` NBT is empty
execute if data storage spawner:tweaks temp.process.input.SpawnData unless data storage spawner:tweaks temp.process.input.SpawnPotentials[] run function spawner-tweaks:impl/item/process/spawn_potentials/append/spawn_data


#   End the process
function spawner-tweaks:impl/item/process/spawn_data/end
