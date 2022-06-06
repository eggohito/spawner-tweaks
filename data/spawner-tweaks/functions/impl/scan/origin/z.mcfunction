#> spawner-tweaks:impl/scan/origin/z
#
#   > Move the origin vector to the negative Y axis
#
#@within
#   function spawner-tweaks:impl/scan/origin/y
#   function spawner-tweaks:impl/scan/origin/z


#   Decrement the score of the `#scan_dz` score holder in the `spawner-tweaks` scoreboard objective
scoreboard players remove #scan_dz spawner-tweaks 1


#   Move the origin vector to the negative Y axis if the score of the `#scan_dz` score holder in the `spawner-tweaks` scoreboard objective is 0 or less. Otherwise, loop this function
execute if score #scan_dz spawner-tweaks matches ..0 positioned ~ ~ ~-1 run function spawner-tweaks:impl/scan/origin/end

execute unless score #scan_dz spawner-tweaks matches ..0 positioned ~ ~ ~-1 run function spawner-tweaks:impl/scan/origin/z