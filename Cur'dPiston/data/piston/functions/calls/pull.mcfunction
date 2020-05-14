execute at @s if block ^ ^ ^1.3 #piston:slime run function piston:slime

execute at @s[tag=right] run clone ^ ^ ^1 ^ ^ ^1 ~ ~ ~
execute at @s[tag=right] run setblock ^ ^ ^1 air

execute at @s[tag=slant] run clone ^ ^ ^1.414 ^ ^ ^1.414 ~ ~ ~
execute at @s[tag=slant] run setblock ^ ^ ^1.414 air
