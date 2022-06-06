#> spawner-tweaks:impl/config/tick
#
#   > Check if any of the config flags have values that are not within their minimum and maximum value range
#
#@within function spawner-tweaks:private/tick


#   Check if the `scan_radius` config flag has a score that are not within its `1..20` score range
execute if score scan_radius spawner-tweaks matches ..0 run function spawner-tweaks:impl/config/scan_radius/min

execute if score scan_radius spawner-tweaks matches 21.. run function spawner-tweaks:impl/config/scan_radius/max


#   Check if the `randomize_spawn_data` config flag has a score that are not within its `0..1` score range
execute if score randomize_spawn_data spawner-tweaks matches ..-1 run function spawner-tweaks:impl/config/randomize_spawn_data/min

execute if score randomize_spawn_data spawner-tweaks matches 2.. run function spawner-tweaks:impl/config/randomize_spawn_data/max
