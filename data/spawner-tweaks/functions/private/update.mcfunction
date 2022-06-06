#> spawner-tweaks:private/update
#
#   > Check for any major, minor or patch changes
#
#@within function spawner-tweaks:private/load


#   1.0.0
execute unless score #semver.major spawner-tweaks = #semver.major spawner-tweaks unless score #semver.minor spawner-tweaks = #semver.minor spawner-tweaks unless score #semver.patch spawner-tweaks = #semver.patch spawner-tweaks run function spawner-tweaks:private/update/1.0.0
