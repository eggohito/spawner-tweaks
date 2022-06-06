#> spawner-tweaks:impl/spawner/item/process/spawn_potentials/prepend/entity_nbts
#
#@within function spawner-tweaks:impl/spawner/item/process/spawn_potentials/loop


data modify block -30000000 0 1603 Text1 set value '{"translate": "    - NBTs: %s", "color": "gray", "italic": false, "with": [{"score": {"name": "#entity_nbts", "objective": "spawner-tweaks"}}]}'

data modify storage spawner:tweaks temp.process.output prepend from block -30000000 0 1603 Text1
