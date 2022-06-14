#> spawner-tweaks:impl/block/process/start
#
#   > Process the placed Barrel used as a placeholder for a Spawner block
#
#@within function spawner-tweaks:impl/scan/x


#   Copy the Spawner data from the item inside the Barrel block
data modify storage spawner:tweaks temp.spawner set from block ~ ~ ~ Items[{tag: {spawner_tweaks: {ToBeProcessed: 1b}}}].tag.spawner_tweaks

data remove storage spawner:tweaks temp.spawner.ToBeProcessed


#   Summon a marker entity to mark the Barrel block
summon minecraft:marker ~ ~ ~ {Tags: ["spawner_tweaks.marker", "spawner_tweaks.initialize"]}

scoreboard players set @e[type = minecraft:marker, tag = spawner_tweaks.initialize] spawner-tweaks 2

data modify entity @e[type = minecraft:marker, tag = spawner_tweaks.initialize, limit = 1] data.spawner_tweaks set from storage spawner:tweaks temp.spawner

tag @e remove spawner_tweaks.initialize


#   Place an empty Spawner block
setblock ~ ~ ~ minecraft:spawner{SpawnData: {entity: {id: "minecraft:area_effect_cloud", Tags: ["spawner_tweaks.empty"]}}, SpawnPotentials: [], Delay: 32767s, RequiredPlayerRange: 0s, MaxNearbyEntities: 0s}


#   Do some clean up
data remove storage spawner:tweaks temp
