#Summoning 1 armor stand for each possible item frame rotation...
execute if entity @s[nbt={Facing:2b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","light_string","on_wall","placing","uni_remove"],NoGravity:1b,Rotation:[180f,0f],Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[nbt={Facing:4b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","light_string","on_wall","placing","uni_remove"],NoGravity:1b,Rotation:[90f,0f],Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[nbt={Facing:5b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","light_string","on_wall","placing","uni_remove"],NoGravity:1b,Rotation:[270f,0f],Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[nbt={Facing:3b}] run summon minecraft:armor_stand ~ ~-.5 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","light_string","on_wall","placing","uni_remove"],NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:20}}]}
execute if entity @s[nbt={Facing:0b}] run summon minecraft:armor_stand ~ ~-.667 ~ {DisabledSlots:4144959,Invisible:1b,Tags:["ecp.tag","on_ceiling","light_string","placing","uni_remove"],NoGravity:1b,Small:1b,ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:19,CuMoDa:20,CuMoDa_2:19}}]}

data modify entity @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] ArmorItems[3].tag.CuMoDa set from entity @s Item.tag.CuMoDa
data modify entity @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] ArmorItems[3].tag.CuMoDa_2 set from entity @s Item.tag.CuMoDa_2
data modify entity @e[tag=light_string,distance=...7,sort=nearest,limit=1,tag=placing] Tags append from entity @s Item.tag.color

#... except for the one on the ground, because who would place a light string on the ground?
execute if entity @s[nbt={Facing:1b}] run function e_christmas:remove/light_string

execute as @e[type=minecraft:armor_stand,tag=placing,distance=...7,sort=nearest,limit=1] at @s run function e_christmas:place/light_string/ceiling_wall

kill @s