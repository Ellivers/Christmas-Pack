#Type in /function e_christmas:give/mistletoe for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Mistletoe","hoverEvent":{"action":"show_text","value":["",{"text":"Mistletoe", "color":"green"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s item_frame{CustomModelData:16,display:{Name:'{"text":"Mistletoe","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,m_place]}}