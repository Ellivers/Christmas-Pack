#Spawns the little light string item
execute if entity @s[tag=white] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_white
execute if entity @s[tag=red] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_red
execute if entity @s[tag=green] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_green
execute if entity @s[tag=blue] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_blue
execute if entity @s[tag=yellow] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_yellow
execute if entity @s[tag=light_blue] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_light_blue
execute if entity @s[tag=cyan] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_cyan
execute if entity @s[tag=orange] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_orange
execute if entity @s[tag=brown] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_brown
execute if entity @s[tag=pink] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_pink
execute if entity @s[tag=purple] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_purple
execute if entity @s[tag=magenta] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_magenta
execute if entity @s[tag=light_gray] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_light_gray
execute if entity @s[tag=lime] run loot spawn ~ ~ ~ loot e_christmas:blocks/light_string_lime

#Particles and sound for a feeling of vanillaness
execute if entity @s[tag=white] run particle item item_frame{CustomModelData:18} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=red] run particle item item_frame{CustomModelData:19} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=green] run particle item item_frame{CustomModelData:20} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=blue] run particle item item_frame{CustomModelData:21} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=yellow] run particle item item_frame{CustomModelData:22} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=light_blue] run particle item item_frame{CustomModelData:23} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=cyan] run particle item item_frame{CustomModelData:24} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=orange] run particle item item_frame{CustomModelData:25} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=brown] run particle item item_frame{CustomModelData:26} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=pink] run particle item item_frame{CustomModelData:27} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=purple] run particle item item_frame{CustomModelData:28} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=magenta] run particle item item_frame{CustomModelData:29} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=light_gray] run particle item item_frame{CustomModelData:30} ~ ~1 ~ .2 .3 .2 .1 28 force
execute if entity @s[tag=lime] run particle item item_frame{CustomModelData:31} ~ ~1 ~ .2 .3 .2 .1 28 force
playsound block.stone.break block @a ~ ~ ~ 1

#TPing the poor piggy to its death :(
tp @e[tag=ecp.s_hitbox,distance=...5,sort=nearest,limit=1] ~ -155 ~

kill @s