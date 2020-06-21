tag @e[tag=last] add Final
tag @e[tag=last] remove last

schedule function piston:end2 1t
execute if entity @e[tag=lndmrk] run schedule function piston:2nd-start 28t