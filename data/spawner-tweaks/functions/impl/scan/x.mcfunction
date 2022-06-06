#> spawner-tweaks:impl/scan/x
#
#   > Move the vector in the positive X axis
#
#@within
#   function spawner-tweaks:impl/scan/y
#   function spawner-tweaks:impl/scan/x


#   Decrement the score of the `#scan_dx` score holder in the `spawner-tweaks` score holder
scoreboard players remove #scan_dx spawner-tweaks 1


#   Summon a marker entity to mark a spawner block
execute align xyz positioned ~0.5 ~0.5 ~0.5 if block ~ ~ ~ minecraft:barrel run function spawner-tweaks:impl/scan/found_block


#   Loop this function until the score of the `#scan_dx` score holder is 0 or less
execute unless score #scan_dx spawner-tweaks matches ..0 positioned ~1 ~ ~ run function spawner-tweaks:impl/scan/x