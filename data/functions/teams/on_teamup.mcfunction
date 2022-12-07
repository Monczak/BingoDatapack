scoreboard players set @s TeamUp 0

execute store success storage bingo:temp Error int 1 unless score @s Teams matches 0

execute if data storage bingo:temp {Error: 1} run tellraw @s {"text":"You are already in a team!","color":"red"}

execute store result storage bingo:temp FreeMembers int 1 at @s if entity @a[distance=0.001..3,scores={Teams=0}]
execute store result storage bingo:temp PeopleNearby int 1 at @s if entity @a[distance=0.001..3]

execute unless data storage bingo:temp {Error: 1} if data storage bingo:temp {FreeMembers: 0} unless data storage bingo:temp {PeopleNearby: 0} run tellraw @s {"text":"The people you are trying to team up with are already in a team!","color":"red"}

execute unless data storage bingo:temp {Error: 1} unless data storage bingo:temp {FreeMembers: 0} unless data storage bingo:temp {PeopleNearby: 0} run execute at @s as @a[distance=..3,scores={Teams=0}] run execute at @s run tellraw @s ["",{"text":"Teamed up with ","color":"yellow"},{"selector":"@a[distance=0.001..3]","color":"gold"}]
execute unless data storage bingo:temp {Error: 1} if data storage bingo:temp {FreeMembers: 0} if data storage bingo:temp {PeopleNearby: 0} run tellraw @s {"text":"Going solo","color":"yellow"}

execute unless data storage bingo:temp {Error: 1} if data storage bingo:temp {FreeMembers: 0} if data storage bingo:temp {PeopleNearby: 0} run scoreboard players add TeamCount GameState 1
execute unless data storage bingo:temp {Error: 1} if data storage bingo:temp {FreeMembers: 0} if data storage bingo:temp {PeopleNearby: 0} run function bingo:teams/join_team

execute unless data storage bingo:temp {Error: 1} unless data storage bingo:temp {FreeMembers: 0} run scoreboard players add TeamCount GameState 1
execute unless data storage bingo:temp {Error: 1} unless data storage bingo:temp {FreeMembers: 0} run execute at @s as @a[distance=..3,scores={Teams=0}] run function bingo:teams/join_team

scoreboard players enable @s TeamUp