#> spawner-tweaks:impl/scan/origin/y
#
#   > Move the origin vector to the negative Y axis
#
#@within
#   function spawner-tweaks:impl/scan/origin/x
#   function spawner-tweaks:impl/scan/origin/y


#   Decrement the score of the `#scan_dy` score holder in the `spawner-tweaks` scoreboard objective
scoreboard players remove #scan_dy spawner-tweaks 1


#   Move the origin vector to the negative Y axis if the score of the `#scan_dy` score holder in the `spawner-tweaks` scoreboard objective is 0 or less. Otherwise, loop this function
execute if score #scan_dy spawner-tweaks matches ..0 positioned ~ ~-1 ~ run function spawner-tweaks:impl/scan/origin/z

execute unless score #scan_dy spawner-tweaks matches ..0 positioned ~ ~-1 ~ run function spawner-tweaks:impl/scan/origin/y