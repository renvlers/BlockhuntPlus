effect clear @a

execute \
    if data storage blockhunt_plus:config {status: "LOBBY"} run \
        effect give @a minecraft:speed infinite 3 true
execute \
    if data storage blockhunt_plus:config {status: "LOBBY"} run \
        effect give @a minecraft:jump_boost infinite 1 true
execute \
    if data storage blockhunt_plus:config {status: "LOBBY"} run \
        effect give @a minecraft:instant_health 1 28 true
execute \
    if data storage blockhunt_plus:config {status: "LOBBY"} run \
        effect give @a minecraft:resistance infinite 255 true

execute \
    if data storage blockhunt_plus:config {status: "PREPARING"} run \
        effect give @a minecraft:speed infinite 0 true
execute \
    if data storage blockhunt_plus:config {status: "PREPARING"} run \
        effect give @a minecraft:instant_health 1 28 true
execute \
    if data storage blockhunt_plus:config {status: "PREPARING"} run \
        effect give @a minecraft:resistance infinite 255 true

execute \
    if data storage blockhunt_plus:config {status: "GAMING"} run \
        effect give @a minecraft:speed infinite 0 true
execute \
    if data storage blockhunt_plus:config {status: "GAMING"} run \
    effect give @a[team=hiders] minecraft:invisibility infinite 255 true
execute \
    if data storage blockhunt_plus:config {status: "GAMING"} run \
    effect give @a[team=seekers] minecraft:glowing infinite 255 true