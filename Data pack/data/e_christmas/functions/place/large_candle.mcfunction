#Places the block
execute if entity @s[nbt={Facing:1b},tag=red] run summon armor_stand ~ ~-.03 ~ {DisabledSlots:4144959,Tags:[ecp.tag,large_candle,on_ground,red,uni_remove],Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[nbt={Facing:1b},tag=!red] run summon armor_stand ~ ~-.03 ~ {DisabledSlots:4144959,Tags:[ecp.tag,large_candle,on_ground,uni_remove],Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:18}}]}
execute if entity @s[nbt=!{Facing:1b},nbt=!{Facing:0b}] positioned ^ ^ ^.3 positioned ~ ~-.5 ~ run function e_christmas:remove/large_candle
execute if entity @s[nbt=!{Facing:1b},nbt={Facing:0b}] positioned ~ ~-1 ~ run function e_christmas:remove/large_candle

#Block placement sound for a feeling of vanillaness
playsound block.stone.place block @a ~ ~ ~ 1

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you.
execute if entity @s[nbt={Facing:1b}] run summon minecraft:pig ~ ~255 ~ {Team:"no_collision",Silent:1b,Tags:[ecp.tag,ecp.s_hitbox,ecp.s_hitplace],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
schedule function e_christmas:hitbox_tick 1t

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
execute if entity @s[nbt={Facing:1b}] run tp @e[tag=ecp.s_hitplace,limit=1] ~ ~ ~

kill @s