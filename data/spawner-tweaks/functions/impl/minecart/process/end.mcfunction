#> spawner-tweaks:impl/minecart/process/end
#
#@within function spawner-tweaks:impl/minecart/process/start


#   Randomize the value of the `Delay` NBT based from the Spawner Minecart's `MinSpawnDelay` and `MaxSpawnDelay` NBTs
function spawner-tweaks:impl/process/delay/randomize


#   Pasted the copied Spawner data to the newly summoned Spawner Minecart
data modify entity @s {} merge from storage spawner:tweaks temp.spawner

data modify entity @e[type = minecraft:marker, tag = spawner_tweaks.passenger.spawner_minecart, limit = 1] data.spawner_tweaks set from storage spawner:tweaks temp.spawner


#   Process the `SpawnData` NBT of the Spawner Minecart entity
data remove entity @s SpawnData

execute if score randomize_spawn_data spawner-tweaks matches 0 if data storage spawner:tweaks temp.spawner.SpawnData run data modify entity @s SpawnData set from storage spawner:tweaks temp.spawner.SpawnData
