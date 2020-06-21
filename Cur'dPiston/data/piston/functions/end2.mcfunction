# modelの変更
execute as @e[tag=Final] store result entity @s Item.tag.CustomModelData int 1 run scoreboard players get @s Number

# 終わり
scoreboard players reset @e[tag=Final] Number
tag @e[tag=Final] remove Final
tag @a remove Second