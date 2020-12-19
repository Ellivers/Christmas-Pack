#Summoning an armor stand at the post to wrap the light string around it
execute positioned ^ ^-.5 ^-.3 align xyz run summon minecraft:armor_stand ~.5 ~ ~.5 {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","light_string","in_block","placing","uni_remove"],NoGravity:1b,Rotation:[180f,0f],Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:20}}]}


execute positioned ^ ^-.5 ^-.5 run data modify entity @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] ArmorItems[3].tag.CustomModelData set from entity @s Item.tag.CuMoDa_3
execute positioned ^ ^-.5 ^-.5 run data modify entity @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] Tags append from entity @s Item.tag.color

execute positioned ^ ^-.5 ^-.5 as @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] at @s run tp @s ~ ~ ~ 90 ~

execute positioned ^ ^-.5 ^-.5 run tag @e[distance=...7,sort=nearest,limit=1,tag=light_string,tag=placing] remove placing

#Block placement sound for a feeling of vanillaness
playsound block.stone.place block @a ~ ~ ~ 1

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you.
execute if entity @s[nbt=!{Facing:1b}] run summon minecraft:pig ~ ~255 ~ {Team:"no_collision",Silent:1b,Tags:[ecp.tag,ecp.s_hitbox,ecp.s_hitplace],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
schedule function e_christmas:hitbox_tick 1t

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
execute positioned ^ ^-.5 ^-.3 align xyz run tp @e[tag=ecp.s_hitplace,limit=1] ~.5 ~ ~.5 ~-90 ~

kill @s