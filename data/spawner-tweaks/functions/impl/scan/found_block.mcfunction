#> spawner-tweaks:impl/scan/found_block
#
#   > Check if the Barrel block has a special item inside it
#
#@within function spawner-tweaks:impl/scan/x


execute if data block ~ ~ ~ Items[{tag: {spawner_tweaks: {ToBeProcessed: 1b}}}] run function spawner-tweaks:impl/spawner/block/process
