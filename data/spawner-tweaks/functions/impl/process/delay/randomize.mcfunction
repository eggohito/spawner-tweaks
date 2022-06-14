#> spawner-tweaks:impl/process/delay/randomize
#
#   > Generate a random number ranging from `MinSpawnDelay` to `MaxSpawnDelay`
#
#@within
#   function spawner-tweaks:impl/block/process/**
#   function spawner-tweaks:impl/minecart/process/**


#   Get the minimum and maximum range
execute store result score $min random run data get storage spawner:tweaks temp.spawner.MinSpawnDelay

execute store result score $max random run data get storage spawner:tweaks temp.spawner.MaxSpawnDelay


#   Generate a random number within the specified minimum and maximum values
function random:true_uniform


#   Store the generated number to the `temp.spawner.Delay` NBT of the `spawner:tweaks` command NBT storage
execute store result storage spawner:tweaks temp.spawner.Delay short 1 run scoreboard players get $out random
