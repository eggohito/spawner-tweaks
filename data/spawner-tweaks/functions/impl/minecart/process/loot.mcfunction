#> spawner-tweaks:impl/minecart/process/loot
#
#   > Make the Spawner Minecart (with the marker passenger) drop an item when destroyed
#
#@within function spawner-tweaks:private/tick


loot spawn ~ ~ ~ loot spawner-tweaks:minecart/spawner

kill @s
