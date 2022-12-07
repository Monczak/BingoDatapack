scoreboard objectives add SoundsEnabled dummy
execute as @a run scoreboard players set @s SoundsEnabled 1
scoreboard objectives add CheckProgress trigger
scoreboard objectives add ToggleSounds trigger
scoreboard objectives add Timers dummy
scoreboard objectives add SoundEffects dummy
scoreboard objectives add GameState dummy
scoreboard objectives add Constants dummy
scoreboard objectives add Time dummy
scoreboard objectives add Teams dummy

scoreboard objectives add Temp dummy

scoreboard objectives add TeamUp trigger
scoreboard players set @a TeamUp 0
scoreboard players enable @a TeamUp
scoreboard objectives add DisbandTeam trigger
scoreboard players set @a DisbandTeam 0
scoreboard players enable @a DisbandTeam

scoreboard players set Installed Constants 1

scoreboard players set 10 Constants 10
scoreboard players set 100 Constants 100

scoreboard players set MillisecondsPerTick Constants 50
scoreboard players set TicksPerSecond Constants 20
scoreboard players set TicksPerMinute Constants 1200
scoreboard players set TicksPerHour Constants 72000

scoreboard players set GameTimer Timers 0
scoreboard players set SFXTimer Timers -1

scoreboard players set AnnounceBingo SoundEffects 0

scoreboard players set Playing GameState 0
scoreboard players set TeamCount GameState 0

scoreboard players set @a Teams 0
