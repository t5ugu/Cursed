# piston:giveを行うと以下の実行条件が入力済みの
##コマブロがもらえます
## ----------
## execute
##	as @e[type=item_frame]
##	unless entity @s[
##		nbt=!{Item:{id:"minecraft:piston"}},
##		nbt=!{Item:{id:"minecraft:sticky_piston"}}]
##	unless entity @s[scores={Number=..0,Number=2,Number=4..}]
##	at @s
##	run function piston:start
## ----------
# main
execute store result score @s Number run data get entity @s Item.tag.CustomModelData
scoreboard players operation @s Number += #2 Number
scoreboard players operation @s Number %= #4 Number

tag @s add piston

# block push n pull
summon armor_stand ~ ~ ~ {Tags:["checker"],NoGravity:1b,Rotation:[0.0f,0.0f],Invisible:1b}

scoreboard players set #rot Number 0
scoreboard players set #fac Number 0

execute store result score #rot Number run data get entity @s ItemRotation
execute store result score #fac Number run data get entity @s Facing

execute if entity @s[scores={Number=3}] run tag @e[tag=checker] add push
execute if entity @s[nbt={Item:{id:"minecraft:sticky_piston"}},scores={Number=1}] run tag @e[tag=checker] add pull

execute as @e[tag=checker] at @s run function piston:rotate

# model change
data modify entity @s[tag=!Cant] Item.tag.CustomModelData set value 2
scoreboard players set @s[tag=Cant] Number 1

tag @e[tag=Cant] remove Cant
tag @s remove piston
tag @s add last
schedule function piston:end 2t
