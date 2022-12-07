scoreboard players set @s DisbandTeam 0

execute store success storage bingo:temp Error int 1 if score @s Teams matches 0

execute if data storage bingo:temp {Error: 1} run tellraw @s {"text":"You are not in a team!","color":"red"}
execute unless data storage bingo:temp {Error: 1} run tellraw @s {"text":"Team disbanded","color":"yellow"}

execute unless data storage bingo:temp {Error: 1} run scoreboard players operation TeamToDisband Temp = @s Teams
execute unless data storage bingo:temp {Error: 1} run execute as @a if score @s Teams = TeamToDisband Temp run function bingo:teams/leave_team

scoreboard players enable @s DisbandTeam