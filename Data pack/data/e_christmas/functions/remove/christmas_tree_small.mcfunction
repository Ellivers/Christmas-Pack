#Dropping the items
loot spawn ~ ~.5 ~ loot e_christmas:blocks/christmas_tree_small
execute positioned ~ ~1.1 ~ as @e[tag=ls_tree,distance=...5] at @s run function e_christmas:check/tree_remove_strings
execute positioned ~ ~1.1 ~ as @e[tag=o_tree,distance=...5] at @s run function e_christmas:check/tree_remove_ornaments

#Particles and sound effects for a feeling of vanillaness
particle item armor_stand{CustomModelData:23} ~ ~1 ~ .3 .5 .3 .1 28 force
playsound block.grass.break block @a ~ ~ ~ 1

#Removing itself and its friend
kill @e[tag=cts_45,sort=nearest,limit=1]
kill @s