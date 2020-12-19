# Every armor stand in zis pack
execute as @e[type=armor_stand,tag=ecp.tag] at @s run function e_christmas:entity_tick

# Christmas Crafter stuff
execute as @e[type=item,nbt={OnGround:1b,Item:{id:"minecraft:red_dye",Count:1b}}] at @s if block ~ ~-1 ~ crafting_table if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:sweet_berries",Count:1b}}] if entity @e[type=item,distance=...5,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}] unless entity @e[type=item,distance=.01...5,nbt={Item:{id:"minecraft:red_dye"}}] run function e_christmas:place/c_christmas_crafter
