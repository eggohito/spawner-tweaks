#> spawner-tweaks:impl/scan/origin/end
#
#   > End the process of off-setting the origin vector
#
#@within function spawner-tweaks:impl/scan/origin/z


#   Re-initialize the scores of the `#scan_dx`, `#scan_dy` and `#scan_dz` score holders in the `spawner-tweaks` scoreboard objective
scoreboard players operation #scan_dx spawner-tweaks = scan_radius spawner-tweaks

scoreboard players operation #scan_dy spawner-tweaks = scan_radius spawner-tweaks

scoreboard players operation #scan_dz spawner-tweaks = scan_radius spawner-tweaks


#   Start the real block scan
function spawner-tweaks:impl/scan/z
