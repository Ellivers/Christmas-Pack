#Type in /function e_christmas:give/large_candle for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Large Candle","hoverEvent":{"action":"show_text","value":["",{"text":"Large Candle"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s item_frame{CustomModelData:17,display:{Name:'{"text":"Large Candle","italic":false}'},EntityTag:{Tags:[ecp.tag,item_place,lc_place]}}