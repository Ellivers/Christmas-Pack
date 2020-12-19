execute align xyz run summon armor_stand ~.5 ~-1 ~.5 {DisabledSlots:4144959,Small:1b,Rotation:[0f,0f],Pose:{Head:[0f,0f,0f]},Tags:["ecp.tag","item_place","cc_place","christmas_crafter"],NoGravity:1b,Marker:1b,Invisible:1b,ArmorItems:[{},{},{},{id:"armor_stand",Count:1b,tag:{CustomModelData:26}}],Fire:32767s}
setblock ~ ~-1 ~ spruce_planks
playsound block.sweet_berry_bush.place block @a ~ ~ ~ 1
kill @e[type=item,distance=...5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:sweet_berries",Count:1b}}]
kill @e[type=item,distance=...5,sort=nearest,limit=1,nbt={Item:{id:"minecraft:iron_ingot",Count:1b}}]
kill @s