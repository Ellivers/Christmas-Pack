#Allows you to decorate your tree!
execute if entity @s[nbt={HandItems:[{id:"minecraft:item_frame",Count:1b,tag:{lightString:1b}},{}]}] positioned ~ ~1.1 ~ unless entity @e[distance=...2,tag=ls_tree,tag=!decorating] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,DisabledSlots:4144959,Tags:[ecp.tag,tree_decor,ls_tree,decorating],ArmorItems:[{},{},{},{id:"torch",Count:1b,tag:{CustomModelData:21}}]}
execute if entity @s[nbt={HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{Ornament:1b}},{}]}] positioned ~ ~1.1 ~ unless entity @e[distance=...2,tag=o_tree,tag=!decorating] run summon armor_stand ~ ~ ~ {Marker:1b,Invisible:1b,DisabledSlots:4144959,Tags:[ecp.tag,tree_decor,o_tree,decorating],ArmorItems:[{},{},{},{id:"firework_star",Count:1b,tag:{CustomModelData:17}}]}
execute if entity @s[nbt={HandItems:[{id:"minecraft:item_frame",Count:1b,tag:{lightString:1b}},{}]}] positioned ~ ~1.1 ~ as @e[distance=...2,tag=decorating] at @s positioned ~ ~-1.1 ~ run function e_christmas:check/small_tree_decorate
execute if entity @s[nbt={HandItems:[{id:"minecraft:firework_star",Count:1b,tag:{Ornament:1b}},{}]}] positioned ~ ~1.1 ~ as @e[distance=...2,tag=decorating] at @s positioned ~ ~-1.1 ~ run function e_christmas:check/small_tree_decorate

#What is that? A non-tree item ON MY TREE!!!?? Get outta here!
execute if entity @s[nbt=!{HandItems:[{tag:{lightString:1b}}]},nbt=!{HandItems:[{tag:{Ornament:1b}}]}] run function e_christmas:check/tree_reject_decor
#What's that? You're trying to place another decoration of the same type? Replace it! You're allowed to change your mind.
execute if entity @s[nbt={HandItems:[{tag:{lightString:1b}},{}]}] positioned ~ ~1.1 ~ if entity @e[distance=...2,tag=ls_tree] run function e_christmas:check/tree_replace_strings
execute if entity @s[nbt={HandItems:[{tag:{Ornament:1b}},{}]}] positioned ~ ~1.1 ~ if entity @e[distance=...2,tag=o_tree] run function e_christmas:check/tree_replace_ornaments
