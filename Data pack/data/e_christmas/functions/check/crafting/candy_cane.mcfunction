playsound minecraft:block.beehive.exit block @a ~ ~ ~ 1
loot spawn ~ ~ ~ loot e_christmas:items/candy_cane
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:red_dye",Count:1b}},sort=nearest,limit=1]
kill @s
