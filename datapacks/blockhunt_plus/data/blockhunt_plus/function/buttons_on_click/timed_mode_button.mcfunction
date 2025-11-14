execute \
    unless data storage blockhunt_plus:config {mode: "TIMED"} run \
        data modify storage blockhunt_plus:config mode set value "TIMED"

function blockhunt_plus:status_control/to_preparing

title @a times 0.5s 2s 0.5s

$title @a subtitle [ \
    "游戏模式：", \
    { \
        text: "计时模式", \
        color: "#E4C0B9", \
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
    positioned -54 74 47 \
    if block ~ ~ ~ minecraft:cherry_button[powered=true] run \
        setblock ~ ~ ~ minecraft:cherry_button[powered=false, face=wall, facing=east]

function blockhunt_plus:actions/start_game