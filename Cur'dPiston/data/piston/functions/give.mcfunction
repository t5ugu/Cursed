give @s minecraft:piston{CustomModelData:1}
give @s minecraft:sticky_piston{CustomModelData:1}
give @s minecraft:item_frame
give @s minecraft:command_block{BlockEntityTag:{Command:'execute as @e[type=item_frame] unless entity @s[nbt=!{Item:{id:"minecraft:piston"}},nbt=!{Item:{id:"minecraft:sticky_piston"}}] unless entity @s[scores={Number=..0,Number=2,Number=4..}] at @s run function piston:start'}}
