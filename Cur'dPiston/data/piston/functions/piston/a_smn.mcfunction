summon armor_stand ~ ~ ~ {Tags: [chain, way, tpplz], Small: true, Invisible:true}
execute if entity @e[distance=..0.5, tag=chain, tag=!tpplz] run kill @e[tag=tpplz]

# 向きの継承
execute if entity @s[tag=right] run tag @e[tag=tpplz] add right
execute if entity @s[tag=slant] run tag @e[tag=tpplz] add slant

execute rotated as @s as @e[tag=tpplz] positioned as @s run teleport @s ~ ~ ~ ~ ~
execute store result score @e[tag=tpplz] Number if entity @e[tag=chain]

tag @e[tag=tpplz] remove tpplz