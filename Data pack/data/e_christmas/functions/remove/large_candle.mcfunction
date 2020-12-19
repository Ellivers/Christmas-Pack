#Spawns the Large Candle item
execute if entity @s[tag=!red] run loot spawn ~ ~ ~ loot e_christmas:blocks/large_candle
execute if entity @s[tag=red] run loot spawn ~ ~ ~ loot e_christmas:blocks/large_candle_red

#Paritcles and sound for a feeling of vanillaness
execute if entity @s[tag=!red] run particle item torch{CustomModelData:18} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=red] run particle item torch{CustomModelData:17} ~ ~1 ~ .2 .3 .2 .1 28 force
playsound block.stone.break block @a ~ ~ ~ 1

#TPing the poor piggy to its death :(
tp @e[tag=ecp.s_hitbox,distance=...5,sort=nearest,limit=1] ~ -155 ~

kill @s