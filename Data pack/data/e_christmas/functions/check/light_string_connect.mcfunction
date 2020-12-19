#Adding a tag for in which axis it can connect and changing model depending on where the tags say it can connect
execute if entity @s[tag=!connected_x,tag=!connected_z] positioned ~ ~ ~1 if entity @e[tag=light_string,distance=...5] run tag @s add connected_z
execute if entity @s[tag=!connected_x,tag=!connected_z] positioned ~ ~ ~-1 if entity @e[tag=light_string,distance=...5] run tag @s add connected_z
execute if entity @s[tag=!connected_x,tag=connected_z] run tp @s ~ ~ ~ 90 ~

execute if entity @s[tag=!connected_z,tag=!connected_x] positioned ~1 ~ ~ if entity @e[tag=light_string,distance=...5] run tag @s add connected_x
execute if entity @s[tag=!connected_z,tag=!connected_x] positioned ~-1 ~ ~ if entity @e[tag=light_string,distance=...5] run tag @s add connected_x
execute if entity @s[tag=connected_x,tag=!connected_z] run tp @s ~ ~ ~ 0 ~


execute unless entity @s[tag=!connected_x,tag=!connected_z] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.CuMoDa

#Changing to its hanging-straight-down state if there are no other light strings around
execute if entity @s[tag=connected_z] positioned ~ ~ ~1 unless entity @e[tag=light_string,distance=...5] positioned ~ ~ ~-2 unless entity @e[tag=light_string,distance=...5] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.CuMoDa_2
execute if entity @s[tag=connected_z] positioned ~ ~ ~1 unless entity @e[tag=light_string,distance=...5] positioned ~ ~ ~-2 unless entity @e[tag=light_string,distance=...5] run tag @s remove connected_z

execute if entity @s[tag=connected_x] positioned ~1 ~ ~ unless entity @e[tag=light_string,distance=...5] positioned ~-2 ~ ~ unless entity @e[tag=light_string,distance=...5] run data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @s ArmorItems[3].tag.CuMoDa_2
execute if entity @s[tag=connected_x] positioned ~1 ~ ~ unless entity @e[tag=light_string,distance=...5] positioned ~-2 ~ ~ unless entity @e[tag=light_string,distance=...5] run tag @s remove connected_x
