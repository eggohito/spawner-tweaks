#> spawner-tweaks:impl/enter_dimension
#
#@within advancement spawner-tweaks:impl/enter_dimension


#   Forceload the MinecraftPhi chunk in the current dimension
function spawner-tweaks:private/minecraftphi/forceload_chunk


#   Revoke the advancement
advancement revoke @s only spawner-tweaks:impl/enter_dimension
