#Summoning 1 armor stand for each possible item frame rotation...
execute if entity @s[nbt={Facing:2b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","wreath","on_wall","uni_remove"],NoGravity:1b,Rotation:[180f,0f],Small:1b,ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[nbt={Facing:4b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","wreath","on_wall","uni_remove"],NoGravity:1b,Rotation:[90f,0f],Small:1b,ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[nbt={Facing:5b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","wreath","on_wall","uni_remove"],NoGravity:1b,Rotation:[270f,0f],Small:1b,ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[nbt={Facing:3b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","wreath","on_wall","uni_remove"],NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:16}}]}

#... except for the one on the ground, because who would place a light string on the ground?
execute if data entity @s {Facing:1b} run function e_christmas:remove/christmas_wreath
execute if data entity @s {Facing:0b} positioned ~ ~-1 ~ run function e_christmas:remove/christmas_wreath

#Block placement sound for a feeling of vanillaness
playsound block.grass.place block @a ~ ~ ~ .5

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you
execute if entity @s[nbt=!{Facing:1b},nbt=!{Facing:0b}] run summon minecraft:pig ~ ~255 ~ {Team:"no_collision",Silent:1b,Tags:[ecp.tag,ecp.s_hitbox,ecp.s_hitplace],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b},{Id:11b,Duration:2147483647,Amplifier:127b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
schedule function e_christmas:hitbox_tick 1t

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
execute if entity @s[nbt=!{Facing:0b},nbt=!{Facing:1b}] run tp @e[tag=ecp.s_hitplace,limit=1] ^ ^-.5 ^.35 ~-90 ~

kill @s