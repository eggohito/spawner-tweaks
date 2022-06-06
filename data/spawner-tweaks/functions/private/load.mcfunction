#> spawner-tweaks:private/load
#
#@within tag/function minecraft:load


#   Forceload the MinecraftPhi chunk
function spawner-tweaks:private/minecraftphi/forceload_chunk


#   Set gamerules
gamerule maxCommandChainLength 100000


#   Add scoreboard objectives
scoreboard objectives add spawner-tweaks dummy


#   Check for updates
function spawner-tweaks:private/update


#   Display a load/reload message
execute unless score #isLoaded spawner-tweaks = #isLoaded spawner-tweaks run tellraw @a[tag = spawner_tweaks.debugger] {"translate": "[+ Loaded \"Spawner Tweaks\" @ v%1$s.%2$s.%3$s by eggohito]", "color": "green", "with": [{"storage": "spawner:tweaks", "nbt": "root.semver.major"}, {"storage": "spawner:tweaks", "nbt": "root.semver.minor"}, {"storage": "spawner:tweaks", "nbt": "root.semver.patch"}]}

execute if score #isLoaded spawner-tweaks = #isLoaded spawner-tweaks run tellraw @a[tag = spawner_tweaks.debugger] {"translate": "[= Reloaded \"Spawner Tweaks\" @ v%1$s.%2$s.%3$s by eggohito]", "color": "gold", "with": [{"storage": "spawner:tweaks", "nbt": "root.semver.major"}, {"storage": "spawner:tweaks", "nbt": "root.semver.minor"}, {"storage": "spawner:tweaks", "nbt": "root.semver.patch"}]}


#   Set the default values for the config flags
execute unless score #isLoaded spawner-tweaks = #isLoaded spawner-tweaks run function spawner-tweaks:config/default


#   Add constants
scoreboard players set #2 spawner-tweaks 2

scoreboard players set #isLoaded spawner-tweaks 1


#   Re-initialize the tick function
schedule function spawner-tweaks:private/tick 1t replace
