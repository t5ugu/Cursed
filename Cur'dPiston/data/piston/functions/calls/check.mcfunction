teleport @s[tag=right] ^ ^ ^1
teleport @s[tag=slant] ^ ^ ^1.414

execute at @s if block ~ ~ ~ #piston:slime run function piston:slime
execute at @s if block ~ ~ ~ #piston:unpush run tag @s add Cant
execute at @s if block ~ ~ ~ #piston:break run tag @s add End
execute at @s if block ~ ~ ~ #piston:break run setblock ~ ~ ~ air destroy

tag @s[scores={Number=12}] add Cant
execute if entity @s[tag=Cant] run tag @e[tag=piston] add Cant
scoreboard players add @s Number 1

execute at @s[tag=!End,tag=!Cant] run function piston:calls/check
