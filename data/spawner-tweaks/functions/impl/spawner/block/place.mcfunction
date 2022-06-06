#> spawner-tweaks:impl/spawner/block/place
#
#@within advancement spawner-tweaks:impl/spawner/block/place


#   Mark all the newly placed "spawners"
function spawner-tweaks:impl/scan/start


#   Revoke the advancement
advancement revoke @s only spawner-tweaks:impl/spawner/block/place
