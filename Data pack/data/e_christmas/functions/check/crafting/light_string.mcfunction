playsound minecraft:block.beehive.exit block @a ~ ~ ~ 1
loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_white
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:glowstone_dust",Count:1b}},sort=nearest,limit=1]
kill @s
