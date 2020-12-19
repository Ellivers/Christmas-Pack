#Type in /function e_christmas:give/wreath for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Christmas Wreath","hoverEvent":{"action":"show_text","value":["",{"text":"Christmas Wreath"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s item_frame{CustomModelData:14,display:{Name:'{"text":"Christmas Wreath","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,cw_place]}}