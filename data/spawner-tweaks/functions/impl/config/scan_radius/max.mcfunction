#> spawner-tweaks:impl/config/scan_radius/max
#
#@within function spawner-tweaks:impl/config/tick


tellraw @a {"translate": "'%1$s' cannot have a score of %2$s! The score has been reverted to 20.", "color": "red", "with": [{"text": "scan_radius", "color": "yellow"}, {"score": {"name": "scan_radius", "objective": "spawner-tweaks"}}]}

scoreboard players set scan_radius spawner-tweaks 20
