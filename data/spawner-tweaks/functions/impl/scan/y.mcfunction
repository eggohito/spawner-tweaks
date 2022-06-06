#> spawner-tweaks:impl/scan/y
#
#   > Move the vector in the positive Y axis
#
#@within
#   function spawner-tweaks:impl/scan/z
#   function spawner-tweaks:impl/scan/y


#   Decrement the score of the `#scan_dy` score holder in the `spawner-tweaks` score holder
scoreboard players remove #scan_dy spawner-tweaks 1


#   Move the vector in the positive X axis
scoreboard players operation #scan_dx spawner-tweaks = scan_radius spawner-tweaks

function spawner-tweaks:impl/scan/x


#   Loop this function until the score of the `#scan_dy` score holder is 0 or less
execute unless score #scan_dy spawner-tweaks matches ..0 positioned ~ ~1 ~ run function spawner-tweaks:impl/scan/y