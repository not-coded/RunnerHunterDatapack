tellraw @a {"text": "----- Prepare setup -----", "color": "green"}

scoreboard objectives add health health
scoreboard objectives setdisplay belowName health
scoreboard objectives setdisplay list health

scoreboard objectives add map trigger
scoreboard objectives add mapselector trigger

scoreboard objectives add speed trigger

scoreboard objectives add usedcarrot minecraft.used:minecraft.carrot_on_a_stick

scoreboard objectives add deaths deathCount

gamerule sendCommandFeedback false
gamerule announceAdvancements false
gamerule keepInventory true
gamerule doImmediateRespawn true
gamerule doDaylightCycle false
gamerule doWeatherCycle false
gamerule disableElytraMovementCheck true
gamerule spawnRadius 0
gamerule mobGriefing false
gamerule commandBlockOutput false
gamerule doMobSpawning false

team add runner
team add hunter

team modify runner nametagVisibility always
team modify hunter nametagVisibility always

team modify hunter color blue
team modify runner color red

team modify hunter prefix "[Hunter] "
team modify runner prefix "[Runner] "


