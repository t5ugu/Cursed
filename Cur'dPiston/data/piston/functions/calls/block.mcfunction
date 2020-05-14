scoreboard players remove @s Number 1

execute if entity @s[tag=pull,scores={Number=0}] run function piston:calls/pull

teleport @s[tag=right] ^ ^ ^-1
teleport @s[tag=slant] ^ ^ ^-1.414

execute at @s[tag=push,tag=right] run clone ~ ~ ~ ~ ~ ~ ^ ^ ^1
execute at @s[tag=push,tag=slant] run clone ~ ~ ~ ~ ~ ~ ^ ^ ^1.414

execute at @s[scores={Number=1..12}] run function piston:calls/block
