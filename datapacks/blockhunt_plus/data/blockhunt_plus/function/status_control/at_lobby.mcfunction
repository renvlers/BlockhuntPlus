# TODO: check if all players prepared

# check if start buttons powered
$execute \
    positioned -54 74 48 \
    if block ~ ~ ~ minecraft:jungle_button[powered=true] run \
        function blockhunt_plus:buttons_on_click/classic_mode_button with storage blockhunt_plus:maps maps[$(map)]

$execute \
    positioned -54 74 47 \
    if block ~ ~ ~ minecraft:cherry_button[powered=true] run \
        function blockhunt_plus:buttons_on_click/timed_mode_button with storage blockhunt_plus:maps maps[$(map)]

$execute \
    positioned -54 74 46 \
    if block ~ ~ ~ minecraft:birch_button[powered=true] run \
        function blockhunt_plus:buttons_on_click/arcade_mode_button with storage blockhunt_plus:maps maps[$(map)]

execute \
    positioned -54 74 45 \
    if block ~ ~ ~ minecraft:pale_oak_button[powered=true] run \
        function blockhunt_plus:buttons_on_click/random_mode_button with storage blockhunt_plus:config

function blockhunt_plus:protection/block_protection { \
    x1: 12407, \
    y1: 70, \
    z1: 6332, \
    x2: 12455, \
    y2: 78, \
    z2: 6401, \
    x3: -55, \
    y3: 73, \
    z3: 11 \
}