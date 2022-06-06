#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/start
#
#   > Start processing the `SpawnPotentials` NBT of the Barrel placeholder item
#
#@within function spawner-tweaks:impl/spawner/item/process


#   Process the `SpawnPotentials` NBT of the Barrel placeholder item
data modify storage spawner:tweaks temp.process.input set from storage spawner:tweaks temp.item

execute store result score #spawn_potentials spawner-tweaks if data storage spawner:tweaks temp.process.input.SpawnPotentials[]

execute if score #spawn_potentials spawner-tweaks matches 1.. run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop
