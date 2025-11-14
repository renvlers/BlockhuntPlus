execute \
    unless data storage blockhunt_plus:config {mode: "CLASSIC"} run \
        data modify storage blockhunt_plus:config mode set value "CLASSIC"

function blockhunt_plus:status_control/to_preparing

title @a times 0.5s 2s 0.5s

$title @a subtitle [ \
    "游戏模式：", \
    { \
        text: "经典模式", \
        color: "#B68563", \
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
    positioned -54 74 48 \
    if block ~ ~ ~ minecraft:jungle_button[powered=true] run \
        setblock ~ ~ ~ minecraft:jungle_button[powered=false, face=wall, facing=east]

function blockhunt_plus:actions/start_game