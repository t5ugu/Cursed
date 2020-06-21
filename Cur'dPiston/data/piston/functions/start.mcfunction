# execute
  #	as @e[type=item_frame, tag=!last]
  #	unless entity @s[
  	# nbt=!{
      # Item:{id:"minecraft:piston"}
    # },
    # nbt=!{
      # Item:{id:"minecraft:sticky_piston"}
    # }
  # ]
  #	unless entity @s[
    # scores={Number=..0,Number=2,Number=4..}
  # ]
  #	at @s
#	run function piston:start

# このfunctionの開始：
# そのピストンが、ブロックを押すのか引くのか：
execute store result score @s Number run data get entity @s Item.tag.CustomModelData
scoreboard players operation @s Number += #2 Number
scoreboard players operation @s Number %= #4 Number

tag @s[scores={Number=3}] add push
tag @s[nbt={Item:{id:"minecraft:sticky_piston"}},scores={Number=1}] add pull

execute store result score #rot Number run data get entity @s ItemRotation
execute store result score #fac Number run data get entity @s Facing

# Rotation の設定
execute if score #fac Number matches 0..1 run function piston:rot/z2o
execute if score #fac Number matches 2..5 run function piston:rot/t2f

tag @s add piston

# ブロックを操作するアマスタの配置：
summon armor_stand ~ ~ ~ {Tags:[chain, only], Small: true, Invisible:1b}
  execute if entity @s[tag=push] run tag @e[tag=chain] add push
  execute if entity @s[tag=pull] run tag @e[tag=chain] add pull

  execute as @e[tag=chain] at @s run function piston:rotate

  # ブロックの操作
  execute if entity @s[tag=!Cant, tag=push] run function piston:pre-push
  execute if entity @s[tag=!Cant, tag=pull] run function piston:pre-pull
kill @e[tag=chain]

# このfunctionの終了：
execute at @s[tag=!Cant] run playsound block.piston.extend block @a

# ぽさを出すために、伸びが微妙なmodelを挟む
data modify entity @s[tag=!Cant] Item.tag.CustomModelData set value 2
scoreboard players set @s[tag=Cant] Number 1

data modify entity @s Tags set value [last]
# 配慮はしたが、あまり連続でこのfunctionを呼んでほしくはない。
schedule function piston:end 1t