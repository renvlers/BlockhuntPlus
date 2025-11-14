execute \
    unless data storage blockhunt_plus:config status run \
        data merge storage blockhunt_plus:config { \
            status: "LOBBY", \
            mode: "CLASSIC", \
            map: 0, \
            turns: 3, \
            minutes_per_turn: 3 \
        }

execute \
    unless data storage blockhunt_plus:config {status: "LOBBY"} run \
        data modify storage blockhunt_plus:config status set value "LOBBY"

function blockhunt_plus:status_control/to_lobby