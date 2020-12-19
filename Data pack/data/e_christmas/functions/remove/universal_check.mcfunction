execute if entity @s[tag=on_ground] if block ~ ~-1 ~ air run function e_christmas:remove/on_ground
execute if entity @s[tag=on_ceiling] if block ~ ~1 ~ air run function e_christmas:remove/on_ceiling
execute if entity @s[tag=on_wall] if block ^ ^ ^-.6 air run function e_christmas:remove/on_wall
execute if entity @s[tag=in_block] if block ~ ~ ~ air run function e_christmas:remove/in_block