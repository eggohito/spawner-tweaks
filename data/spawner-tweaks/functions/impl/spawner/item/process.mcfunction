#> spawner-tweaks:impl/spawner/item/process
#
#   > Process the Barrel placeholder item
#
#@within function spawner-tweaks:impl/spawner/item/tick


#   Get the Spawner data from the Barrel placeholder item
data modify storage spawner:tweaks temp.item set from entity @s Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks


#   If the Barrel placeholder item has a populated `SpawnData` NBT but an empty `SpawnPotentials` NBT, append the `SpawnData` NBT into the `SpawnPotentials` NBT
execute if data storage spawner:tweaks temp.item.SpawnData unless data storage spawner:tweaks temp.item.SpawnPotentials[] run function spawner-tweaks:impl/spawner/item/process/spawn_potentials/append/spawn_data


#   Remove the `SpawnData` NBT of the Barrel placeholder item if the score of the `shuffle_spawn_data` score holder in the `spawner-tweaks` scoreboard objective is 1
execute if score shuffle_spawn_data spawner-tweaks matches 1 run data remove storage spawner:tweaks temp.item.SpawnData


#   Process the `SpawnPotentials` NBT of the Barrel placeholder item
function spawner-tweaks:impl/spawner/item/process/spawn_potentials/start


#   Prepend a string that would inform players that may not have the resource-pack loaded
data modify storage spawner:tweaks temp.process.output prepend value '{"translate": "Places a Spawner block", "color": "gray", "italic": false}'


#   Apply the changes made to the item and do some clean up
data modify entity @s Item.tag.BlockEntityTag.Items[0].tag.spawner_tweaks set from storage spawner:tweaks temp.item

data modify entity @s Item.tag.display.Lore set from storage spawner:tweaks temp.process.output

data remove entity @s Item.tag.spawner_tweaks.ToBeProcessed

data remove storage spawner:tweaks temp


#   Kill the experience orb summoned from breaking a Spawner block
kill @e[type = minecraft:experience_orb, distance = ..0.6, nbt = {Age: 0s}]
