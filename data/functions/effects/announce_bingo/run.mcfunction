execute if score AnnounceBingo SoundEffects matches 1 run scoreboard players add SFXTimer Timers 1
execute if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 50.. run function bingo:effects/announce_bingo/reset

# Sound effect data

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 0 run playsound minecraft:entity.generic.explode master @s ~ ~ ~ 1 0.5

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 1 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 0.74

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 5 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 5 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.74

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 9 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 1 1.12

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 13 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 13 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 0.74

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:block.note_block.pling master @s ~ ~ ~ 1 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:block.note_block.didgeridoo master @s ~ ~ ~ 1 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.63 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:block.note_block.flute master @s ~ ~ ~ 0.63 1.46

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.63 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 18 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.62 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 19 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.61 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 20 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.60 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 21 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.59 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 22 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.58 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 23 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.57 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 24 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.56 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 25 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.55 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 26 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.54 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 27 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.53 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 28 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.52 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 29 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.51 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 30 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.50 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 31 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.49 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 32 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.48 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 33 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.47 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 34 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.46 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 35 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.45 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 36 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.42 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 37 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.39 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 38 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.34 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 39 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.29 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 40 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.25 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 41 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.21 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 42 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.17 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 43 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.14 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 44 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.11 1.46
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 45 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.08 0.74
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 46 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.06 1
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 47 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.04 1.12
execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 48 run playsound minecraft:block.note_block.chime master @s ~ ~ ~ 0.01 1.46

execute as @a at @s if score AnnounceBingo SoundEffects matches 1 if score SFXTimer Timers matches 17 run playsound minecraft:entity.allay.ambient_without_item master @s ~ ~ ~ 1 0.8