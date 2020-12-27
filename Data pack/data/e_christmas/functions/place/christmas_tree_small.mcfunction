##Making sure that the armor stand has the correct nbt
data merge entity @s {Pose:{RightArm:[180f,0f,25f],Head:[0f,0f,0f]},Rotation:[0f,0f]}

#Summoning another armor stand for a cool-looking tree
summon armor_stand ~ ~ ~ {DisabledSlots:4144959,Invisible:1b,Marker:1b,Tags:["ecp.tag","cts_45"],Rotation:[45.0f,0.0f],NoGravity:1b,Pose:{Head:[0f,0f,0f]},ArmorItems:[{},{},{},{id:"armor_stand",Count:1b,tag:{CustomModelData:25}}]}

#Block placement sound for a feeling of vanillaness
playsound block.grass.place block @a ~ ~ ~ 1

tag @s remove cts_place
