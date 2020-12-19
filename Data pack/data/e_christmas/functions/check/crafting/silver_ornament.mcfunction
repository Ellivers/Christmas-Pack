playsound minecraft:block.beehive.exit block @a ~ ~ ~ 1
loot spawn ~ ~ ~ loot e_christmas:blocks/silver_ornament
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:light_gray_dye",Count:1b}},sort=nearest,limit=1]
kill @s
