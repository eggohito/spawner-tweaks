#> spawner-tweaks:private/minecraftphi/forceload_chunk
#
#   > Forceload MinecraftPhi's chunk
#
#@within
#   function spawner-tweaks:private/load
#   function spawner-tweaks:impl/enter_dimension


#   Reload the chunk
forceload remove -30000000 1600

forceload add -30000000 1600


#   Place the Oak Wall Sign if there isn't one yet
execute unless block -30000000 0 1603 minecraft:oak_wall_sign run setblock -30000000 0 1603 minecraft:oak_wall_sign[facing = south]
