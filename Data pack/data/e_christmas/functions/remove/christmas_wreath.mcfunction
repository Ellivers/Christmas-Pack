#Spawns the Christmas Wreath item
loot spawn ^ ^ ^.3 loot e_christmas:blocks/christmas_wreath

#Paritcles and sound for a feeling of vanillaness
particle item firework_star{CustomModelData:16} ~ ~1 ~ .2 .3 .2 .1 28 force
playsound block.grass.break block @a ~ ~ ~ .6

#TPing the poor piggy to its death :(
tp @e[tag=ecp.s_hitbox,distance=...5,sort=nearest,limit=1] ~ -155 ~

kill @s