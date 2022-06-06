#> spawner-tweaks:impl/spawner/block/randomize/spawn_data
#
#   > Choose an element from the `SpawnPotentials` of the Spawner
#
#@within function spawner-tweaks:impl/spawner/block/process


#   Choose an element from the `temp.block.SpawnPotentials` NBT of the `spawner:tweaks` storage in a random fashion
data modify storage random:input List set from storage spawner:tweaks temp.block.SpawnPotentials

function random:choose


#   Use the chosen element as the value for the `SpawnData` NBT of the Spawner block
data modify block ~ ~ ~ SpawnData set from storage random:output Tag.data
