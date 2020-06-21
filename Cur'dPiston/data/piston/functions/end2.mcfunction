# model change
execute as @e[tag=Final] store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s Number

# end
scoreboard players reset @e[tag=Final] Number
tag @e[tag=Final] remove Final
