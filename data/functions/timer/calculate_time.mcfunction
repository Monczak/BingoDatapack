scoreboard players operation Milliseconds Time = GameTimer Timers
scoreboard players operation Milliseconds Time %= TicksPerSecond Constants
scoreboard players operation Milliseconds Time *= MillisecondsPerTick Constants

scoreboard players operation Seconds Time = GameTimer Timers
scoreboard players operation Seconds Time %= TicksPerMinute Constants
scoreboard players operation Seconds Time /= TicksPerSecond Constants

scoreboard players operation Minutes Time = GameTimer Timers
scoreboard players operation Minutes Time %= TicksPerHour Constants
scoreboard players operation Minutes Time /= TicksPerMinute Constants

scoreboard players operation Hours Time = GameTimer Timers
scoreboard players operation Hours Time /= TicksPerHour Constants