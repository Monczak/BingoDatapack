execute if score StartGame SoundEffects matches 1 run scoreboard players add SFXTimer Timers 1
execute if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 14.. run function bingo:effects/start_game/reset

# Sound effect data

execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 0 run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 0.7 1.8

execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.74
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.74
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 0.74

execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 5 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.56
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 5 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.56

execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.74
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.74
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 0.74

execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 13 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.12
execute as @a at @s if score StartGame SoundEffects matches 1 if score SFXTimer Timers matches 13 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.12