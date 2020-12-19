data modify entity @s ArmorItems[3].tag.CustomModelData set from entity @e[tag=cts_90,distance=...2,limit=1] HandItems[0].tag.CuMoDa_Tree
data modify entity @s Tags append from entity @e[tag=cts_90,distance=...2,limit=1] HandItems[0].tag.TreeTag
data remove entity @e[tag=cts_90,distance=...2,limit=1] HandItems[0]
tag @s remove decorating