#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/prepend/block_light_limit
#
#@within function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop


data modify block -30000000 0 1603 Text1 set value '{"translate": "    - block_light_limit: %s", "color": "gray", "italic": false, "with": [{"storage": "spawner:tweaks", "nbt": "temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.block_light_limit"}]}'

data modify storage spawner:tweaks temp.process.output prepend from block -30000000 0 1603 Text1
