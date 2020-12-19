execute if entity @s[nbt=!{Facing:1b},nbt=!{Facing:0b}] if block ^ ^ ^-.5 #e_christmas:ls_wrap run function e_christmas:place/light_string/post
execute if entity @s[nbt=!{Facing:1b}] unless block ^ ^ ^-.5 #e_christmas:ls_wrap run function e_christmas:place/light_string/summon_ceiling_wall
execute if entity @s[nbt={Facing:0b}] if block ^ ^ ^-.5 #e_christmas:ls_wrap run function e_christmas:place/light_string/summon_ceiling_wall
execute if entity @s[nbt={Facing:1b}] run function e_christmas:remove/light_string