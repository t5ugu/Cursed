execute store result score @s Number if entity @e[tag=chain]

# 自分が担当する position が #piston:slime の場合：
execute at @s if block ~ ~ ~ #piston:slime run function piston:piston/alldir_smn

# 次Stepの生成：
execute at @s run summon minecraft:armor_stand ~ ~ ~ {Tags: [chain, way, tplz], Small: true}
  # 向きの継承
  execute if entity @s[tag=right] run tag @e[tag=tplz] add right
  execute if entity @s[tag=slant] run tag @e[tag=tplz] add slant

  execute at @s run teleport @e[tag=tplz] @s

  # 1 step進んだ所へ
  execute as @e[tag=tplz, tag=right] at @s run teleport @s ^ ^ ^1 ~ ~
  execute as @e[tag=tplz, tag=slant] at @s run teleport @s ^ ^ ^1.414 ~ ~

    # 重複していたら無かったことに
    execute as @e[tag=tplz] at @s if entity @e[tag=!tplz, tag=chain, distance=..0.5] run kill @s
    tag @e[tag=tplz] remove tplz

execute as @e[tag=chain] at @s if block ~ ~ ~ #piston:break run kill @s
# 12ブロックより多いかの確認：
execute store result score #Chains Number if entity @e[tag=chain]
execute unless score #Chains Number matches 1..12 run tag @e[tag=chain] add Cant

execute if entity @e[tag=piston, tag=push] if block ~ ~ ~ #piston:unpush run tag @e[tag=chain] add Cant
execute if entity @e[tag=piston, tag=pull] if block ~ ~ ~ #piston:unpull run tag @e[tag=chain] add End
execute if entity @e[tag=piston, tag=pull] if block ~ ~ ~ #piston:unpull run kill @s

execute if entity @s[tag=Cant] run tag @e[tag=piston] add Cant

# 処理の終了と次の開始：
tag @s remove way

execute as @e[tag=!Cant, tag=way, tag=!End] at @s run function piston:piston/check