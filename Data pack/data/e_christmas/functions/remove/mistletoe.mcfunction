#Spawns the Mistletoe item
loot spawn ~ ~ ~ loot e_christmas:blocks/mistletoe

#Paritcles and sound for a feeling of vanillaness
particle item apple{CustomModelData:16} ~ ~1 ~ .2 .3 .2 .1 28 force
playsound block.grass.break block @a ~ ~ ~ .6

#TPing the poor piggy to its death :(
tp @e[tag=ecp.s_hitbox,distance=...5,sort=nearest,limit=1] ~ -155 ~

kill @s