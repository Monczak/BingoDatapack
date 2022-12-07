execute if data storage bingo:temp {Sharing: 0} as @s at @s if score Playing GameState matches 1 run tellraw @a ["",{"selector":"@s","color":"gold"}," has obtained ",{"text":"<ITEM NAME>","italic":true,"color":"dark_green"},"!"]
execute if data storage bingo:temp {Sharing: 0} as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute if data storage bingo:temp {Sharing: 0} as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.75
execute if data storage bingo:temp {Sharing: 0} as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.3 1

execute if data storage bingo:temp {Sharing: 0} store result storage bingo:temp WasPlaying int 1 run scoreboard players get Playing GameState
execute if data storage bingo:temp {Sharing: 0} if score Playing GameState matches 1 run function bingo:check_bingo

scoreboard players operation CurrentTeam Temp = @s Teams
data modify storage bingo:temp Sharing set value 1
execute if data storage bingo:temp {WasPlaying: 1} run function bingo:share_advancements
data modify storage bingo:temp Sharing set value 0