#Type in /function e_christmas:give/light_string_blue for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Blue Light String","hoverEvent":{"action":"show_text","value":["",{"text":"Blue Light String"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s minecraft:item_frame{CuMoDa_Tree:30,TreeTag:"lsb_tree",CustomModelData:21,display:{Name:'{"text":"Blue Light String","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,ls_place,blue],Item:{id:"minecraft:apple",Count:1b,tag:{CustomModelData:68,CuMoDa:29,CuMoDa_2:28,CuMoDa_3:64,color:"blue"}}},lightString:1b}