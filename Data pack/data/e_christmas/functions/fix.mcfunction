#Type /function e_christmas:fix if something isn't right
execute as @e[tag=ecp.s_hitbox] at @s unless entity @e[tag=light_string,distance=...5] unless entity @e[tag=large_candle,distance=...5] run kill @s
execute as @e[tag=cts_45] at @s unless entity @e[tag=cts_90,distance=...5] run kill @s
execute as @e[tag=tree_decor] at @s positioned ~ ~-1.1 ~ unless entity @e[tag=cts_90,distance=...5] run kill @s
execute as @e[tag=christmas_crafter] at @s if block ~ ~ ~ air run kill @s