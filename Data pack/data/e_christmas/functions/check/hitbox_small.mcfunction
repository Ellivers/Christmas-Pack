#Places each custom block accordingly
execute as @e[tag=light_string,distance=...5,tag=on_ceiling] at @s run function e_christmas:remove/light_string
execute as @e[tag=light_string,distance=...5,tag=!on_ceiling] at @s positioned ^ ^ ^.3 run function e_christmas:remove/light_string
execute as @e[tag=large_candle,distance=...5] at @s run function e_christmas:remove/large_candle
execute as @e[tag=mistletoe,distance=...5] at @s run function e_christmas:remove/mistletoe
execute as @e[tag=wreath,distance=...5] at @s run function e_christmas:remove/christmas_wreath
#Attempts to stop the hit sound. Sadly this doesn't seem to work..
stopsound @a[distance=..8] player entity.player.attack.strong
stopsound @a[distance=..8] player entity.player.attack.knockback
stopsound @a[distance=..8] player entity.player.attack.crit