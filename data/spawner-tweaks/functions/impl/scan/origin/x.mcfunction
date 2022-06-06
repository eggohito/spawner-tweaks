#> spawner-tweaks:impl/scan/origin/x
#
#   > Move the origin vector to the negative X axis
#
#@within
#   function spawner-tweaks:impl/scan
#   function spawner-tweaks:impl/scan/origin/x


#   Decrement the score of the `#scan_dx` score holder in the `spawner-tweaks` scoreboard objective
scoreboard players remove #scan_dx spawner-tweaks 1


#   Move the origin vector to the negative Y axis if the score of the `#scan_dx` score holder in the `spawner-tweaks` scoreboard objective is 0 or less. Otherwise, loop this function
execute if score #scan_dx spawner-tweaks matches ..0 positioned ~-1 ~ ~ run function spawner-tweaks:impl/scan/origin/y

execute unless score #scan_dx spawner-tweaks matches ..0 positioned ~-1 ~ ~ run function spawner-tweaks:impl/scan/origin/x
