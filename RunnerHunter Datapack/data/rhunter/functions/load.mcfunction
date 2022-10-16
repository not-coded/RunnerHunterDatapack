tellraw @a {"text": "--------------------------------------", "color": "dark_red"}
tellraw @a {"text": "The Runner hunter datapack has now been loaded!", "color": "red"}
tellraw @a {"text": "--------------------------------------", "color": "dark_red"}

execute at @a run playsound minecraft:item.totem.use ambient @a ~ ~ ~ 100000 0.5
execute at @a run particle totem_of_undying ~ ~ ~ 0 0 0 1 100 normal

