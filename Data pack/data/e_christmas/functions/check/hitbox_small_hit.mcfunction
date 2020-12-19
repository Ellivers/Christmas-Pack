#Advancement magic for less lag when removing blocks!
execute at @s as @e[tag=ecp.s_hitbox,distance=..8,nbt={HurtTime:10s}] at @s run function e_christmas:check/hitbox_small
advancement revoke @s only e_christmas:hitbox