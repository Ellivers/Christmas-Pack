#Type in /function e_christmas:give/ornament_red for easy op access to this item!

tellraw @s [{"text":"Gave 1 "}, {"text":"["},{"text":"Red Ornament","hoverEvent":{"action":"show_text","value":["",{"text":"Red Ornament","color":"red"}]}}, {"text": "] "}, {"text":"to "}, {"selector":"@s"}]
give @s firework_star{CuMoDa_Tree:20,TreeTag:"ro_tree",CustomModelData:19,Ornament:1b,display:{Name:'{"text":"Red Ornament","italic":false}'}} 1