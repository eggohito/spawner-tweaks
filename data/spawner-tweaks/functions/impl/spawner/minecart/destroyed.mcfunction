#> spawner-tweaks:impl/spawner/minecart/destroyed
#
#   > If the Spawner Minecart was destroyed, spawn a Spawner item and kill the passenger marker entity
#
#@within function spawner-tweaks:private/tick


loot spawn ~ ~ ~ loot spawner-tweaks:minecart/spawner

kill @s
