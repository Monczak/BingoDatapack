scoreboard players set @s TeamUp 0

execute if score Playing GameState matches 0 run function bingo:teams/teamup
execute unless score Playing GameState matches 0 run tellraw @s {"text":"You cannot change teams while the game is in progress!","color":"red"}

scoreboard players enable @s TeamUp