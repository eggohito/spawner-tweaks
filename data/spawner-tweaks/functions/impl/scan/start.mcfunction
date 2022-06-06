#> spawner-tweaks:impl/scan/start
#
#   > Scan blocks within the specified `scan_radius`
#
#@internal


#   Prepare the delta values before doing the scan
scoreboard players operation #scan_dx spawner-tweaks = scan_radius spawner-tweaks

scoreboard players operation #scan_dx spawner-tweaks /= #2 spawner-tweaks

scoreboard players operation #scan_dy spawner-tweaks = scan_radius spawner-tweaks

scoreboard players operation #scan_dy spawner-tweaks /= #2 spawner-tweaks

scoreboard players operation #scan_dz spawner-tweaks = scan_radius spawner-tweaks

scoreboard players operation #scan_dz spawner-tweaks /= #2 spawner-tweaks


#   Start the scan by moving the origin vector to the negative X axis
function spawner-tweaks:impl/scan/origin/x
