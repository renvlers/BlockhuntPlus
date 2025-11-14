scoreboard objectives add teams dummy
scoreboard players set #team_hiders teams 0
scoreboard players set #team_seekers teams 0
scoreboard players set #team_dead teams 0

scoreboard objectives add random dummy
scoreboard players set #random random 0

scoreboard objectives add counter dummy
scoreboard players set #start_time_left counter 0
scoreboard players set #num_interactions counter 0

scoreboard objectives add death_check deathCount

scoreboard objectives add temp dummy
scoreboard players reset * temp

scoreboard objectives add join dummy
scoreboard players reset * join

scoreboard objectives add leave minecraft.custom:minecraft.leave_game
scoreboard players reset * leave

scoreboard objectives add player_count dummy
scoreboard players reset * player_count
scoreboard players set #online player_count 0