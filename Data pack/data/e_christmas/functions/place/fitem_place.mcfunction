#Advancement stuff for less lag when you place something.
advancement revoke @s only e_christmas:place_item_frame
advancement revoke @s only e_christmas:place_armor_stand
execute as @e[tag=item_place,tag=ecp.tag,distance=..8] at @s run function e_christmas:place/item_place
scoreboard players set @s citemf_place 0
scoreboard players set @s citema_place 0