random reset * 42 true true

execute \
    store result score #random random run \
        random value 0..2

$execute \
    if score #random random matches 0 run \
        function blockhunt_plus:buttons_on_click/classic_mode_button with storage blockhunt_plus:maps maps[$(map)]

$execute \
    if score #random random matches 1 run \
        function blockhunt_plus:buttons_on_click/timed_mode_button with storage blockhunt_plus:maps maps[$(map)]

$execute \
    if score #random random matches 2 run \
        function blockhunt_plus:buttons_on_click/arcade_mode_button with storage blockhunt_plus:maps maps[$(map)]

execute \
    positioned -54 74 45 \
    if block ~ ~ ~ minecraft:pale_oak_button[powered=true] run \
        setblock ~ ~ ~ minecraft:pale_oak_button[powered=false, face=wall, facing=east]