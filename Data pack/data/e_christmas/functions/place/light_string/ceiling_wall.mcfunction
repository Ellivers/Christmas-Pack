#Item tag magic
execute if entity @s[tag=on_wall] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.CuMoDa
execute if entity @s[tag=on_ceiling] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.CuMoDa_2

tag @s remove placing

#Block placement sound for a feeling of vanillaness
playsound block.stone.place block @a ~ ~ ~ 1

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you.
summon minecraft:pig ~ ~255 ~ {Team:"no_collision",Silent:1b,Tags:[ecp.tag,ecp.s_hitbox,ecp.s_hitplace],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
schedule function e_christmas:hitbox_tick 1t

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
execute if entity @s[tag=on_wall] run tp @e[tag=ecp.s_hitplace,limit=1] ^ ^ ^.35 ~-90 ~
execute if entity @s[tag=on_ceiling] run tp @e[tag=ecp.s_hitplace,limit=1] ~ ~-0.2 ~
#Turning off collision for the piggies, so that they won't bump you

stopsound @a[distance=..8] player entity.item_frame.place