#Type in /function e_christmas:give/light_string_yellow for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Yellow Light String","hoverEvent":{"action":"show_text","value":["",{"text":"Yellow Light String"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s minecraft:item_frame{CuMoDa_Tree:33,TreeTag:"lsy_tree",CustomModelData:22,display:{Name:'{"text":"Yellow Light String","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,ls_place,yellow],Item:{id:"minecraft:apple",Count:1b,tag:{CustomModelData:68,CuMoDa:32,CuMoDa_2:31,CuMoDa_3:65,color:"yellow"}}},lightString:1b}