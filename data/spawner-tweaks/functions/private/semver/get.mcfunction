#> spawner-tweaks:private/semver/get
#
#   > Get the semantic version of the datapack
#
#@within spawner-tweaks:private/**


execute store result score #semver.major spawner-tweaks run data get storage spawner:tweaks root.semver.major

execute store result score #semver.minor spawner-tweaks run data get storage spawner:tweaks root.semver.minor

execute store result score #semver.patch spawner-tweaks run data get storage spawner:tweaks root.semver.patch
