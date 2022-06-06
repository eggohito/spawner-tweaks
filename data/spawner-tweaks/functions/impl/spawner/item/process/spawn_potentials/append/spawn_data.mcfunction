#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/append/spawn_data
#
#   > If the Barrel placeholder item has a populated `SpawnData` NBT but empty `SpawnPotentials` NBT, append the `SpawnData` NBT into the `SpawnPotentials` NBT
#
#@within function spawner-tweaks:impl/spawner/item/process


data modify storage spawner:tweaks temp.item.SpawnPotentials append value {weight: 1, data: {}}

data modify storage spawner:tweaks temp.item.SpawnPotentials[-1].data set from storage spawner:tweaks temp.item.SpawnData
