#Get rid of that from the tree!
loot spawn ~ ~.8 ~ loot e_christmas:blocks/custom_dirt
execute positioned ~ ~.8 ~ run data modify entity @e[type=item,sort=nearest,limit=1,nbt={Item:{tag:{itsCustom:42b}}}] Item set from entity @s HandItems[0]

data remove entity @s HandItems[0]