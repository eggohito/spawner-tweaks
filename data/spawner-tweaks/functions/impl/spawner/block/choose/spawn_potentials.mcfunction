#> spawner-tweaks:impl/spawner/block/choose/spawn_potentials
#
#   > Choose an element from the `SpawnPotentials` of the Spawner
#
#@within function spawner-tweaks:impl/spawner/block/process


#   Choose an element from the `temp.block.SpawnPotentials` NBT of the `spawner:tweaks` storage randomly
data modify storage random:input List set from storage spawner:tweaks temp.block.SpawnPotentials

function random:choose


#   Use the chosen element as the `SpawnData` for the storage
data modify block ~ ~ ~ SpawnData set from storage random:output Tag.data
