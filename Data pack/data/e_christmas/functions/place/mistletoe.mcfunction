#Places the block
execute if data entity @s {Facing:0b} run summon armor_stand ~ ~-.667 ~ {DisabledSlots:4144959,Tags:[ecp.tag,mistletoe,on_ceiling,placing,uni_remove],Invisible:1b,Small:1b,NoGravity:1b,ArmorItems:[{},{},{},{id:"apple",Count:1b,tag:{CustomModelData:16}}]}
execute if entity @s[nbt=!{Facing:1b},nbt=!{Facing:0b}] positioned ^ ^ ^.3 positioned ~ ~-.5 ~ run function e_christmas:remove/mistletoe
execute if entity @s[nbt={Facing:1b}] run function e_christmas:remove/mistletoe

#execute if data entity @s {Facing:0b} as @e[tag=mistletoe,tag=placing,distance=...7,sort=nearest,limit=1] run data modify entity @s Pose.Head[1] set from entity @e[sort=random,limit=1] Rotation[0]
execute if data entity @s {Facing:0b} as @e[tag=mistletoe,tag=placing,distance=...7,sort=nearest,limit=1] at @s rotated as @e[sort=random,limit=1] run tp @s ~ ~ ~ ~ ~

#Block placement sound for a feeling of vanillaness
playsound block.grass.place block @a ~ ~ ~ .6

tag @e[distance=...7,sort=nearest,limit=1,tag=mistletoe,tag=placing] remove placing

#Piggies! For hit detection. Also turning off collision for the piggies, so that they won't bump you.
execute if entity @s[nbt={Facing:0b}] run summon minecraft:pig ~ ~255 ~ {Team:"no_collision",Silent:1b,Tags:[ecp.tag,ecp.s_hitbox,ecp.s_hitplace],NoAI:1b,DeathLootTable:"minecraft:empty",ActiveEffects:[{Id:14b,Duration:2147483647,Amplifier:0b,ShowParticles:0b}],Attributes:[{Base:30.0d,Name:"generic.max_health"}],Health:30.0f}
schedule function e_christmas:hitbox_tick 1t

#TPing the piggies from their place in the sky to avoid seeing them the first tick they spawn
execute if entity @s[nbt={Facing:0b}] run tp @e[tag=ecp.s_hitplace,limit=1] ~ ~-.8 ~

kill @s