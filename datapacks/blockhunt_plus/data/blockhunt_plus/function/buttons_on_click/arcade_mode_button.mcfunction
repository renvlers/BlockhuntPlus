execute \
    unless data storage blockhunt_plus:config {mode: "ARCADE"} run \
        data modify storage blockhunt_plus:config mode set value "ARCADE"

function blockhunt_plus:status_control/to_preparing

title @a times 0.5s 2s 0.5s

$title @a subtitle [ \
    "游戏模式：", \
    { \
        text: "街机模式", \
        color: "#D4BF83", \
        bold: true \
    }, \
    "；游戏地图：", \
    { \
        text: "$(name)", \
        color: "$(color)", \
        bold: true \
    } \
]

title @a title { \
    text: "欢迎来到寻藏大师", \
    bold: true, \
    color: "#CCFF99" \
}

execute \
    positioned -54 74 46 \
    if block ~ ~ ~ minecraft:birch_button[powered=true] run \
        setblock ~ ~ ~ minecraft:birch_button[face=wall, facing=east, powered=false]

function blockhunt_plus:actions/start_game