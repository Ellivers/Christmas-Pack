# Crafter stuff
execute if entity @s[tag=christmas_crafter] positioned ~ ~1 ~ as @e[type=item,distance=...6] at @s run function e_christmas:check/christmas_crafter

# Light String stuff
execute if entity @s[tag=light_string,tag=!on_wall,tag=!in_block] run function e_christmas:check/light_string_connect

# Universal removal functions
execute if entity @s[tag=uni_remove] run function e_christmas:remove/universal_check

# Small Christmas Tree stuff
execute if entity @s[tag=cts_90,nbt={HandItems:[{Count:1b},{}]}] if entity @a[distance=..8] run function e_christmas:check/christmas_tree_small
