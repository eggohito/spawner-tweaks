#> spawner-tweaks:impl/item/process/lore/prepend/entity/nbts
#
#   > Prepend the score of the `#temp.entity.nbts` score holder to the `temp.process.output.Lore` NBT of the `spawner:tweaks` command NBT storage
#
#@within function spawner-tweaks:impl/item/process/spawn_potentials/loop


data modify block -30000000 0 1603 Text1 set value '{"translate": "    - %1$s %2$s", "color": "green", "italic": false, "with": [{"text": "NBTs:", "color": "gray"}, {"score": {"name": "#temp.entity.nbts", "objective": "spawner-tweaks"}, "color": "gray"}]}'

data modify storage spawner:tweaks temp.process.output.Lore prepend from block -30000000 0 1603 Text1
