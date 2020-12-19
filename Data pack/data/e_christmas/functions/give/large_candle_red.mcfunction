#Type in /function e_christmas:give/large_candle_red for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Large Red Candle","hoverEvent":{"action":"show_text","value":["",{"text":"Large Red Candle", "color":"red"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s item_frame{CustomModelData:15,display:{Name:'{"text":"Large Red Candle","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,lcr_place,red]}}