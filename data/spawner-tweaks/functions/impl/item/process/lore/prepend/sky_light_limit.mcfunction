#> spawner-tweaks:impl/item/process/lore/prepend/sky_light_limit
#
#   > Prepend the `temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.sky_light_limit` NBT to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_potentials/loop


data modify block -30000000 0 1603 Text1 set value '{"translate": "    - %1$s %2$s", "color": "green", "italic": false, "with": [{"text": "sky_light_limit:", "color": "gray"}, {"storage": "spawner:tweaks", "nbt": "temp.process.input.SpawnPotentials[-1].data.custom_spawn_rules.sky_light_limit", "color": "gray"}]}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1
