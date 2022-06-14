#> spawner-tweaks:impl/block/process/end
#
#   > End the process of ticking the marker entity   
#
#@within function spawner-tweaks:impl/block/process/tick


#   Copy the Spawner data from the item inside the Barrel block
data modify storage spawner:tweaks temp.spawner set from entity @s data.spawner_tweaks


#   Randomize the value of the `Delay` NBT based from the `MinSpawnDelay` and `MaxSpawnDelay` NBTs of the Spawner
function spawner-tweaks:impl/process/delay/randomize

execute store result block ~ ~ ~ Delay short 1 run data get storage spawner:tweaks temp.spawner.Delay


#   Paste the copied Spawner data to the Spawner block
data modify block ~ ~ ~ {} merge from storage spawner:tweaks temp.spawner


#   Setup the `SpawnData` of the Spawner block
data remove block ~ ~ ~ SpawnData

execute if score randomize_spawn_data spawner-tweaks matches 0 if data storage spawner:tweaks temp.spawner.SpawnData run data modify block ~ ~ ~ SpawnData set from storage spawner:tweaks temp.spawner.SpawnData


#   Do some clean up
kill @s

data remove storage spawner:tweaks temp
