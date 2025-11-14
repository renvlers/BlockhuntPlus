execute \
    unless data storage blockhunt_plus:config {status: "PREPARING"} run \
        data modify storage blockhunt_plus:config status set value "PREPARING"

execute \
    if score #team_hiders teams matches 0 run \
        team add hiders { \
            text: "方块", \
            color: "#CCFF99", \
            bold: true \
        }

execute \
    if score #team_hiders teams matches 0 run \
        team modify hiders nametagVisibility never

execute \
    if score #team_hiders teams matches 0 run \
        team modify hiders seeFriendlyInvisibles false

execute \
    if score #team_hiders teams matches 0 run \
        team modify hiders collisionRule never

execute \
    if score #team_hiders teams matches 0 run \
        team modify hiders prefix { \
            text: "【方块】", \
            color: "#CCff99", \
            bold: true \
        }

execute \
    if score #team_hiders teams matches 0 run \
        scoreboard players set #team_hiders teams 1



execute \
    if score #team_seekers teams matches 0 run \
        team add seekers { \
            text: "猎人", \
            color: "#CC99FF", \
            bold: true \
        }

execute \
    if score #team_seekers teams matches 0 run \
        team modify seekers nametagVisibility hideForOtherTeams

execute \
    if score #team_seekers teams matches 0 run \
        team modify seekers collisionRule pushOwnTeam

execute \
    if score #team_seekers teams matches 0 run \
        team modify seekers prefix { \
            text: "【猎人】", \
            color: "#CC99FF", \
            bold: true \
        }

execute \
    if score #team_seekers teams matches 0 run \
        scoreboard players set #team_seekers teams 1



execute \
    if score #team_dead teams matches 0 run \
        team add dead { \
            text: "阵亡", \
            color: "dark_gray", \
            bold: true \
        }

execute \
    if score #team_dead teams matches 0 run \
        team modify dead color dark_gray
        
execute \
    if score #team_dead teams matches 0 run \
        team modify dead collisionRule never

execute \
    if score #team_dead teams matches 0 run \
        team modify dead nametagVisibility hideForOwnTeam

execute \
    if score #team_dead teams matches 0 run \
        team modify dead prefix { \
            text: "【阵亡】", \
            color: "dark_gray", \
            bold: true \
        }

execute \
    if score #team_dead teams matches 0 run \
        scoreboard players set #team_dead teams 1

gamemode adventure @a
spawnpoint @a 34556 110 579
spreadplayers 34556 579 2 4 under 112 false @a

function blockhunt_plus:actions/give_effects

time set day
weather clear