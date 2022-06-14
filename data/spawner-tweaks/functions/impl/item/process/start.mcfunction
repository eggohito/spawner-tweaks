#> spawner-tweaks:impl/item/process/start
#
#   > Process the `Item.tag.spawner_tweaks` NBT of the item entity
#
#@within function spawner-tweaks:impl/item/tick


#   Copy the `Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks` NBT to the `temp.spawner` NBT of the `spawner:tweaks` command NBT storage
data modify storage spawner:tweaks temp.spawner set from entity @s Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks


#   Process the `temp.spawner.SpawnData` and `temp.spawner.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
function spawner-tweaks:impl/item/process/spawn_data/start


#   Process the `temp.spawner.SpawnPotentials` NBT of the `spawner:tweaks` command NBT storage
function spawner-tweaks:impl/item/process/spawn_potentials/start


#   Do some clean up
data modify entity @s Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks set from storage spawner:tweaks temp.spawner

data remove entity @s Item.tag.spawner_tweaks.ToBeProcessed

data remove storage spawner:tweaks temp


#   Kill the Experience Orb summoned from breaking the Spawner block
kill @e[type = minecraft:experience_orb, distance = ..0.6, nbt = {Age: 0s}]
