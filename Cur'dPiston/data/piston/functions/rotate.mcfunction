# rotate
execute if score #fac Number matches 0..1 run function piston:rot/z2o
execute if score #fac Number matches 2..5 run function piston:rot/t2f

execute store result entity @s Rotation[0] float 45 run scoreboard players get #Yaw Number
execute store result entity @s Rotation[1] float 45 run scoreboard players get #Pitch Number

scoreboard players operation #risl Number %= #2 Number

execute if score #risl Number matches ..-1 run scoreboard players operation #risl Number *= #-1 Number

execute if score #risl Number matches 0 run tag @s add right
execute if score #risl Number matches 1 run tag @s add slant

scoreboard players set @s Number 0

execute rotated as @s run function piston:calls/check

# push, pull n sound
execute at @s[tag=!Cant] run function piston:calls/block

execute if entity @s[tag=!Cant] at @e[tag=piston,limit=1] run playsound block.piston.extend block @a
kill @s
