execute \
    if data storage blockhunt_plus:config {status: "LOBBY"} run \
        function blockhunt_plus:status_control/at_lobby with storage blockhunt_plus:config

execute \
    if data storage blockhunt_plus:config {status: "PREPARING"} run \
        function blockhunt_plus:status_control/at_preparing

execute \
    if data storage blockhunt_plus:config {status: "GAMING"} run \
        function blockhunt_plus:status_control/at_gaming

execute \
    if data storage blockhunt_plus:config {status: "BREAK"} run \
        function blockhunt_plus:status_control/at_break

execute \
    if data storage blockhunt_plus:config {status: "ENDING"} run \
        function blockhunt_plus:status_control/at_ending


# check if player dies and run on_player_death
execute \
    as @e[type=minecraft:player] \
    if score @s death_check matches 1.. run \
        function blockhunt_plus:on_events/on_player_death

# check if a player joins
execute \
    as @a \
    unless score @s join matches 1.. run \
        function blockhunt_plus:on_events/on_player_join

# check if a player exits
execute \
    as @a \
    if score @s leave matches 1.. run \
        function blockhunt_plus:on_events/on_player_exit
