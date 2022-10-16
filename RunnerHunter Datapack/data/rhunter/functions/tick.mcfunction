# ----------------- Runner Hunter -----------------



# ------ Select ---------

scoreboard players enable @a speed

scoreboard players enable @a map
execute as @a[scores={map=1}] run function rhunter:maps
scoreboard players set @a[scores={map=1..}] map 0

scoreboard players enable @a[name="NotCoded"] mapselector
execute as @a[scores={mapselector=1}] run function rhunter:maps
scoreboard players set @a[scores={mapselector=1}] mapselector 0

execute as @a[scores={speed=2..}] run tellraw @a {"text":"Speed is now disabled!","color":"red"}
execute as @a[scores={speed=2..}] run scoreboard players set @s speed 0


#1.. = more than 1

# -----------------------


# ------ Watercity ---------

# execute if score NotCoded mapselector matches 2 run

execute if score NotCoded mapselector matches 2 run tp @e[scores={deaths=1..}] runnerhunter:watercity 571 64 -533
execute if score NotCoded mapselector matches 2 run scoreboard players set @e[scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 2 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball

execute if score NotCoded mapselector matches 2 run execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 water replace obsidian
execute if score NotCoded mapselector matches 2 run effect give @a minecraft:water_breathing 100000 0 true

# --------------------------

# ------ Skyport ---------

# execute if score NotCoded mapselector matches 3

execute if score NotCoded mapselector matches 3 run tp @e[type=player, scores={deaths=1..}] runnerhunter:skyport 915 70 1345
execute if score NotCoded mapselector matches 3 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 3 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball
execute if score NotCoded mapselector matches 3 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball


# launcher
execute if score NotCoded mapselector matches 3 run execute at @e[type=player,scores={usedcarrot=1..}] unless block ~ ~-1 ~ air run execute at @e[type=!area_effect_cloud,type=!item,type=!experience_orb,scores={usedcarrot=1..}] run summon area_effect_cloud ~ ~1 ~ {Particle:"totem_of_undying",Radius:3f,Duration:6,Effects:[{Id:1b,Amplifier:127b,Duration:5,ShowParticles:0b}]} 
execute if score NotCoded mapselector matches 3 run execute at @e[type=player,scores={usedcarrot=1..}] unless block ~ ~-1 ~ air run execute at @e[type=!area_effect_cloud,type=!item,type=!experience_orb,scores={usedcarrot=1..}] run summon area_effect_cloud ~ ~1 ~ {Particle:"totem_of_undying",Radius:3f,Duration:6,Effects:[{Id:25b,Amplifier:127b,Duration:2,ShowParticles:0b}]}
execute if score NotCoded mapselector matches 3 run scoreboard players set @e[scores={usedcarrot=1..}] usedcarrot 0

# ----------------------------------

# ------ San Pedrazas ---------

# execute if score NotCoded mapselector matches 4 run 

execute if score NotCoded mapselector matches 4 run tp @e[type=player, scores={deaths=1..}] runnerhunter:sanpedrazas -3 24 -72
execute if score NotCoded mapselector matches 4 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 4 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball

execute if score NotCoded mapselector matches 4 run execute at @a run fill ~75 0 ~75 75 0 ~75 grass_block

# --------------------------

# ------ Maya Island ---------

# execute if score NotCoded mapselector matches 5 run 

execute if score NotCoded mapselector matches 5 run tp @e[type=player, scores={deaths=1..}] runnerhunter:mayaisland 48 63 -32
execute if score NotCoded mapselector matches 5 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 5 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball


# --------------------------

# ------ Creepy Blackstone Castle ---------

# execute if score NotCoded mapselector matches 6 run 

execute if score NotCoded mapselector matches 6 run tp @e[type=player, scores={deaths=1..}] runnerhunter:creepyblackstonecastle -19 65 -87
execute if score NotCoded mapselector matches 6 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 6 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball

# --------------------------

# ------ Castle ---------

# execute if score NotCoded mapselector matches 7 run 

execute if score NotCoded mapselector matches 7 run tp @e[type=player, scores={deaths=1..}] runnerhunter:castle 367 24 -72
execute if score NotCoded mapselector matches 7 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 7 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball


# --------------------------

# ------ Big Island ---------

# execute if score NotCoded mapselector matches 8 run 

execute if score NotCoded mapselector matches 8 run tp @e[type=player, scores={deaths=1..}] runnerhunter:bigisland -4 65 4
execute if score NotCoded mapselector matches 8 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 8 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball


# --------------------------

# ------ Skyblock Infinite ---------

# execute if score NotCoded mapselector matches 9 run 

execute if score NotCoded mapselector matches 9 run tp @e[type=player, scores={deaths=1..}] runnerhunter:skyblockinfinite -448 15 -280
execute if score NotCoded mapselector matches 9 run scoreboard players set @e[type=player, scores={deaths=1..}] deaths 0
execute if score NotCoded mapselector matches 9 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball
execute if score NotCoded mapselector matches 9 run execute at @e[type=arrow,nbt={inGround: 1b}] run function rhunter:fireball


# --------------------------


# Clear illegal items
kill @e[type=item]

# Set gamemode to adventure
execute as @e if entity @e[type=player,name=!"NotCoded"] if entity @e[gamemode=survival] run gamemode adventure @s

# Give Effects
effect give @a minecraft:saturation 100000 0 true

# remove spawners/chests etc.
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace chest
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace barrel
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace spawner
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace dropper
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace end_gateway
execute at @a run fill ~35 ~1 ~35 ~-35 ~-1 ~-35 air replace tnt


# Explosive Arrow
kill @e[type=arrow,nbt={inGround: 1b}]


# Give Hunter buffs
effect give @e[team=hunter,scores={speed=1}] minecraft:speed 1 1 true