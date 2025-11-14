execute \
    unless data storage blockhunt_plus:config {status: "GAMING"} run \
        data modify storage blockhunt_plus:config status set value "GAMING"

# Divide players into 2 teams
execute \
    if data storage blockhunt_plus:config {mode: "ARCADE"} run \
        function blockhunt_plus:actions/divide_into_teams_arcade
execute \
    unless data storage blockhunt_plus:config {mode: "ARCADE"} run \
        function blockhunt_plus:actions/divide_into_teams

$data modify entity @n[tag=memory_entity] data.hider_spawn.x set from storage blockhunt_plus:maps maps[$(map)].hider_spawn[0]
$data modify entity @n[tag=memory_entity] data.hider_spawn.y set from storage blockhunt_plus:maps maps[$(map)].hider_spawn[1]
$data modify entity @n[tag=memory_entity] data.hider_spawn.z set from storage blockhunt_plus:maps maps[$(map)].hider_spawn[2]
$data modify entity @n[tag=memory_entity] data.hider_spawn.a set from storage blockhunt_plus:maps maps[$(map)].hider_spawn[3]
$data modify entity @n[tag=memory_entity] data.hider_spawn.b set from storage blockhunt_plus:maps maps[$(map)].hider_spawn[4]
execute \
    as @a[team=hiders] run \
        function blockhunt_plus:actions/set_spawn with entity @n[tag=memory_entity] data.hider_spawn

$data modify entity @n[tag=memory_entity] data.seeker_spawn.x set from storage blockhunt_plus:maps maps[$(map)].seeker_spawn[0]
$data modify entity @n[tag=memory_entity] data.seeker_spawn.y set from storage blockhunt_plus:maps maps[$(map)].seeker_spawn[1]
$data modify entity @n[tag=memory_entity] data.seeker_spawn.z set from storage blockhunt_plus:maps maps[$(map)].seeker_spawn[2]
$data modify entity @n[tag=memory_entity] data.seeker_spawn.a set from storage blockhunt_plus:maps maps[$(map)].seeker_spawn[3]
$data modify entity @n[tag=memory_entity] data.seeker_spawn.b set from storage blockhunt_plus:maps maps[$(map)].seeker_spawn[4]
execute \
    as @a[team=seekers] run \
        function blockhunt_plus:actions/set_spawn with entity @n[tag=memory_entity] data.seeker_spawn

execute \
    as @a[team=hiders] run \
        function blockhunt_plus:actions/teleport with entity @n[tag=memory_entity] data.hider_spawn
execute \
    as @a[team=seekers] run \
        function blockhunt_plus:actions/teleport with entity @n[tag=memory_entity] data.seeker_spawn

function blockhunt_plus:actions/give_effects

gamemode adventure @a[team=hiders]
gamemode adventure @a[team=seekers]

$data modify entity @n[tag=memory_entity] data.world_time set from storage blockhunt_plus:maps maps[$(map)].world_time
$data modify entity @n[tag=memory_entity] data.weather set from storage blockhunt_plus:maps maps[$(map)].weather

function blockhunt_plus:actions/set_world_time with entity @n[tag=memory_entity] data
execute \
    if data entity @n[tag=memory_entity] {data: {weather: "CLEAR"}} run \
        weather clear
execute \
    if data entity @n[tag=memory_entity] {data: {weather: "RAIN"}} run \
        weather rain
execute \
    if data entity @n[tag=memory_entity] {data: {weather: "THUNDER"}} run \
        weather thunder