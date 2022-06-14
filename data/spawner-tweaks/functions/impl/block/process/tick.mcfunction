#> spawner-tweaks:impl/block/process/tick
#
#   > Tick the marker entities that have the `spawner_tweaks.marker` tag (added via the `/tag` command)
#
#@within function spawner-tweaks:private/tick


scoreboard players remove @s spawner-tweaks 1

execute if score @s spawner-tweaks matches ..0 run function spawner-tweaks:impl/block/process/end
