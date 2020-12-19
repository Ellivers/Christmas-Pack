playsound minecraft:block.beehive.exit block @a ~ ~ ~ 1
loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_green
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:green_dye",Count:1b}},sort=nearest,limit=1]
kill @s
