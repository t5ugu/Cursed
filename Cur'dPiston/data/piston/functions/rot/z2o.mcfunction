scoreboard players operation #Yaw Number = #rot Number
scoreboard players operation #Pitch Number = #0 Number

execute if score #fac Number matches 0 run scoreboard players operation #Yaw Number *= #-1 Number
execute if score #fac Number matches 1 run scoreboard players operation #Yaw Number += #4 Number
scoreboard players operation #risl Number = #Yaw Number
