# model change
execute as @e[tag=last] store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s Number

# end
scoreboard players reset @e[tag=last] Number
tag @e[tag=last] remove last
