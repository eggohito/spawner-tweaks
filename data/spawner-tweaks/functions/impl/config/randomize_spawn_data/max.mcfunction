#> spawner-tweaks:impl/config/randomize_spawn_data/max
#
#@within function spawner-tweaks:impl/config/tick


tellraw @a {"translate": "'%1$s' cannot have a score of %2$s! The score has been reverted to 1.", "color": "red", "with": [{"text": "randomize_spawn_data", "color": "yellow"}, {"score": {"name": "randomize_spawn_data", "objective": "spawner-tweaks"}}]}

scoreboard players set randomize_spawn_data spawner-tweaks 1
