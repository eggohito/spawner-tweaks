#> spawner-tweaks:impl/item/process/spawn_potentials/append/spawn_data
#
#   > Append the `temp.process.input.SpawnData` NBT to the `temp.process.output.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_data/start


data modify storage spawner:tweaks temp.process.output.SpawnPotentials append value {weight: 1, data: {}}

data modify storage spawner:tweaks temp.process.output.SpawnPotentials[-1].data set from storage spawner:tweaks temp.process.input.SpawnData
