#Type in /function e_christmas:give/candy_cane for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Candy Cane","hoverEvent":{"action":"show_text","value":["",{"text":"Candy Cane","color":"red"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s apple{CustomModelData:17, display:{Name:'{"text":"Candy Cane","italic":false}'}} 1