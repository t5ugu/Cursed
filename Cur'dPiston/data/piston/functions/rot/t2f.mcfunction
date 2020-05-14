scoreboard players operation #Pitch Number = #rot Number

execute if score #fac Number matches 2..3 run scoreboard players operation #Yaw Number = #2 Number
execute if score #fac Number matches 3 run scoreboard players operation #Yaw Number *= #-1 Number

execute if score #fac Number matches 4 run scoreboard players operation #Yaw Number = #0 Number
execute if score #fac Number matches 5 run scoreboard players operation #Yaw Number = #4 Number

execute store result score #risl Number run scoreboard players operation #Pitch Number -= #2 Number
# scoreboard players operation #risl Number = #Pitch Number
