execute \
    unless data storage blockhunt_plus:config {status: "LOBBY"} run \
        data modify storage blockhunt_plus:config status set value "LOBBY"

execute \
    if score #team_hiders teams matches 1 run \
        team remove hiders

execute \
    if score #team_hiders teams matches 1 run \
        scoreboard players set #team_hiders teams 0

execute \
    if score #team_seekers teams matches 1 run \
        team remove seekers

execute \
    if score #team_seekers teams matches 1 run \
        scoreboard players set #team_seekers teams 0

execute \
    if score #team_dead teams matches 1 run \
        team remove dead

execute \
    if score #team_dead teams matches 1 run \
        scoreboard players set #team_dead teams 0

spawnpoint @a -45 73 46 -90 0
spreadplayers -45 46 3 9 under 80 false @a
execute \
    as @a \
    at @a run \
    tp @s ~ ~ ~ -90 0
gamemode adventure @a

function blockhunt_plus:actions/give_effects

time set noon
weather clear