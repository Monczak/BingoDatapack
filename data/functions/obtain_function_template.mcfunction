execute as @s at @s if score Playing GameState matches 1 run tellraw @a ["",{"selector":"@s","color":"gold"}," has obtained ",{"text":"<ITEM NAME>","italic":true,"color":"dark_green"},"!"]
execute as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.bell master @s ~ ~ ~ 1 1
execute as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.xylophone master @s ~ ~ ~ 1 0.75
execute as @s at @s if score Playing GameState matches 1 if score @s SoundsEnabled matches 1 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.3 1

execute if score Playing GameState matches 1 run function bingo:check_bingo