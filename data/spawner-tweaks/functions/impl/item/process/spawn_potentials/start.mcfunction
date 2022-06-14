#> spawner-tweaks:impl/item/process/spawn_potentials/start
#
#   > Process the `temp.spawner.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/start


#   Copy the `temp.spawner` NBT to the `temp.process.input` NBT in the `spawner:tweaks` command NBT storage
data modify storage spawner:tweaks temp.process.input set from storage spawner:tweaks temp.spawner


#   Iterate through the `temp.process.input.SpawnPotentials` NBT list if it's not empty
execute store result score #spawn_potentials spawner-tweaks if data storage spawner:tweaks temp.process.input.SpawnPotentials[]

execute if score #spawn_potentials spawner-tweaks matches 1.. run function spawner-tweaks:impl/item/process/spawn_potentials/loop
