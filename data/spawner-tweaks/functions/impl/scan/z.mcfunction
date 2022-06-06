#> spawner-tweaks:impl/scan/z
#
#   > Move the vector in the positive Z axis
#
#@within
#   function spawner-tweaks:impl/scan/origin/end
#   function spawner-tweaks:impl/scan/z


#   Decrement the score of the `#scan_dz` score holder in the `spawner-tweaks` score holder
scoreboard players remove #scan_dz spawner-tweaks 1


#   Move the vector in the positive Y axis
scoreboard players operation #scan_dy spawner-tweaks = scan_radius spawner-tweaks

function spawner-tweaks:impl/scan/y


#   Loop this function until the score of the `#scan_dz` score holder is 0 or less
execute unless score #scan_dz spawner-tweaks matches ..0 positioned ~ ~ ~1 run function spawner-tweaks:impl/scan/z