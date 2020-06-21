# Rotationの適用
execute store result entity @s Rotation[0] float 45 run scoreboard players get #Yaw Number
execute store result entity @s Rotation[1] float 45 run scoreboard players get #Pitch Number

# 傾いているのか、いないのか
scoreboard players operation #risl Number %= #2 Number
  execute if score #risl Number matches ..0 run scoreboard players operation #risl Number *= #-1 Number
  execute if score #risl Number matches 0 run tag @s add right
  execute if score #risl Number matches 1 run tag @s add slant

# pullをpushと見なす
execute at @s[tag=pull] run function piston:pull2push

scoreboard players set @s Number 1
# メインループ
execute at @s run function piston:piston/check