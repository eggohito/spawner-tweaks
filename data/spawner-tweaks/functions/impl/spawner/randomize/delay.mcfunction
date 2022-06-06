#> spawner-tweaks:impl/spawner/randomize/delay
#
#   > Generate a random number ranging from `MinSpawnDelay` to `MaxSpawnDelay`
#
#@within
#   function spawner-tweaks:impl/spawner/block/process
#   function spawner-tweaks:impl/spawner/minecart/process


#   Get the minimum and maximum range for the LCG
execute store result score $min random run data get storage spawner:tweaks temp.spawner.MinSpawnDelay

execute store result score $max random run data get storage spawner:tweaks temp.spawner.MaxSpawnDelay


#   Generate a number
function random:true_uniform


#   Store the generated number to the `temp.spawner.Delay` NBT of the `spawner:tweaks` command storage
execute store result storage spawner:tweaks temp.spawner.Delay short 1 run scoreboard players get $out random
