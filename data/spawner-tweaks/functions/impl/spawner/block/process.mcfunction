#> spawner-tweaks:impl/spawner/block/process
#
#   > Process the placed Barrel placeholder block for a Spawner block
#
#@within function spawner-tweaks:impl/scan/found_block


#   Copy the Spawner data from the item inside the placeholder Barrel block
data modify storage spawner:tweaks temp.block set from block ~ ~ ~ Items[{tag: {spawner_tweaks: {ToBeProcessed: 1b}}}].tag.spawner_tweaks

data remove storage spawner:tweaks temp.block.ToBeProcessed


#   Randomize the value of the `Delay` NBT based from the copied Spawner data's `MinSpawnDelay` and `MaxSpawnDelay` NBTs
execute store result score $min random run data get storage spawner:tweaks temp.block.MinSpawnDelay

execute store result score $max random run data get storage spawner:tweaks temp.block.MaxSpawnDelay

function random:true_uniform

execute store result storage spawner:tweaks temp.block.Delay short 1 run scoreboard players get $out random


#   Apply the copied Spawner data to the newly set Spawner block
setblock ~ ~ ~ minecraft:spawner

data modify block ~ ~ ~ {} merge from storage spawner:tweaks temp.block

data remove block ~ ~ ~ SpawnData

execute if score randomize_spawn_data spawner-tweaks matches 0 if data storage spawner:tweaks temp.block.SpawnData run data modify block ~ ~ ~ SpawnData set from storage spawner:tweaks temp.block.SpawnData

execute if score randomize_spawn_data spawner-tweaks matches 0 unless data storage spawner:tweaks temp.block.SpawnData run function spawner-tweaks:impl/spawner/block/randomize/spawn_data


#   Do some clean up
data remove storage spawner:tweaks temp
