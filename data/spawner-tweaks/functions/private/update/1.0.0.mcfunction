#> spawner-tweaks:private/update/1.0.0
#
#@within function spawner-tweaks:private/update


#   Set the semantic version
data modify storage spawner:tweaks root.semver set value {major: 1, minor: 0, patch: 0}

function spawner-tweaks:private/semver/get
