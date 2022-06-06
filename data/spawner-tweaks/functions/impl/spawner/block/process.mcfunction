#> spawner-tweaks:impl/spawner/block/process
#
#   > Process the placed Barrel placeholder block for a Spawner block
#
#@within function spawner-tweaks:impl/scan/found_block


#   Copy the Spawner data from the item inside the placeholder Barrel block
data modify storage spawner:tweaks temp.spawner set from block ~ ~ ~ Items[{tag: {spawner_tweaks: {ToBeProcessed: 1b}}}].tag.spawner_tweaks

data remove storage spawner:tweaks temp.spawner.ToBeProcessed


#   Randomize the value of the `Delay` NBT based from the copied Spawner data's `MinSpawnDelay` and `MaxSpawnDelay` NBTs
function spawner-tweaks:impl/spawner/randomize/delay


#   Apply the copied Spawner data to the newly set Spawner block
setblock ~ ~ ~ minecraft:spawner

data modify block ~ ~ ~ {} merge from storage spawner:tweaks temp.spawner


#   Process the `SpawnData` NBT of the Spawner
data remove block ~ ~ ~ SpawnData

execute if score randomize_spawn_data spawner-tweaks matches 0 if data storage spawner:tweaks temp.spawner.SpawnData run data modify block ~ ~ ~ SpawnData set from storage spawner:tweaks temp.spawner.SpawnData


#   Do some clean up
data remove storage spawner:tweaks temp
