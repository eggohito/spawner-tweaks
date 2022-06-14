#> spawner-tweaks:impl/item/process/lore/prepend/entity/id
#
#   > Prepend the `temp.process.input.SpawnPotentials[-1].data.entity.id` NBT to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_potentials/loop


data modify block -30000000 0 1603 Text1 set value '{"translate": "  %1$s %2$s%3$s%2$s", "color": "gray", "italic": false, "with": [{"text": "@", "color": "yellow"}, {"text": "\\""}, {"storage": "spawner:tweaks", "nbt": "temp.process.input.SpawnPotentials[-1].data.entity.id"}]}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1
