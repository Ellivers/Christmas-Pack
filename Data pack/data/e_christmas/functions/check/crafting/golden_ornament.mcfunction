playsound minecraft:block.beehive.exit block @a ~ ~ ~ 1
loot spawn ~ ~ ~ loot e_christmas:blocks/golden_ornament
kill @e[type=item,distance=...5,nbt={Item:{id:"minecraft:iron_nugget",Count:1b}},sort=nearest,limit=1]
kill @s
