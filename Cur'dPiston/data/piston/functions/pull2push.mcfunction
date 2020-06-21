teleport @s[x_rotation=90] ~ ~ ~ 0 -90
teleport @s[x_rotation=45] ~ ~ ~ ~180 -45
teleport @s[x_rotation=0] ~ ~ ~ ~180 0
teleport @s[x_rotation=-45] ~ ~ ~ ~180 45
teleport @s[x_rotation=-90] ~ ~ ~ 0 90

execute at @s[tag=right] run teleport @s ^ ^ ^-2
execute at @s[tag=slant] run teleport @s ^ ^ ^-2.828

tag @s add push
tag @s remove pull