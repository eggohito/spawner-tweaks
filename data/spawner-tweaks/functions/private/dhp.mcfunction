#> spawner-tweaks:private/dhp
#
#   > A private function for declaring constants/variables using Datapack Helper Plus by spgoding in Visual Studio Code
#
#@private


#>
#
#   > A command storage used for processing stuff
#
#@internal
    #declare storage spawner:tweaks


#>
#   > Score holders used as config flags
#
#@internal
    #declare score_holder scan_radius
    #declare score_holder randomize_spawn_data


#>
#
#   > Score holders used for the 'block scanning' method by CloudWolf
#
#@within
#   function spawner-tweaks:impl/scan
#   function spawner-tweaks:impl/scan/**
    #declare score_holder #scan_dx
    #declare score_holder #scan_dy
    #declare score_holder #scan_dz


#>
#
#   > The marker entity used for marking spawner blocks
#
#@public
    #alias vector "minecraftPhiSign" -30000000 0 1603