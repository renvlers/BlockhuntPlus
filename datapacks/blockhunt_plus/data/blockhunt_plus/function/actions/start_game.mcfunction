execute \
    if score #start_time_left counter matches 0 run \
        scoreboard players set #start_time_left counter 10

execute \
    if score #start_time_left counter matches 4..10 run \
        title @a actionbar [ \
            { \
                text: "距离游戏开始还有 ", \
                color: "aqua", \
            }, \
            { \
                type: "score", \
                score: { \
                    objective: "counter", \
                    name: "#start_time_left" \
                }, \
                color: "green", \
            }, \
            { \
                text: " 秒", \
                color: "aqua" \
            } \
        ]

execute \
    if score #start_time_left counter matches 1..3 run \
        title @a actionbar [ \
            { \
                text: "距离游戏开始还有 ", \
                color: "aqua", \
            }, \
            { \
                type: "score", \
                score: { \
                    objective: "counter", \
                    name: "#start_time_left" \
                }, \
                color: "red", \
            }, \
            { \
                text: " 秒", \
                color: "aqua" \
            } \
        ]

scoreboard players remove #start_time_left counter 1

execute \
    at @r \
    if score #start_time_left counter matches 4..10 run \
        schedule function blockhunt_plus:actions/play_time_left_sound_ge4 1s

execute \
    at @r \
    if score #start_time_left counter matches 1..3 run \
        schedule function blockhunt_plus:actions/play_time_left_sound_le3 1s

execute \
    at @r \
    if score #start_time_left counter matches 0 run \
        schedule function blockhunt_plus:actions/play_game_start_sound 1s

# Start game when the countdown ends
execute \
    if score #start_time_left counter matches 0 run \
        schedule function blockhunt_plus:actions/run_to_gaming 1s

execute \
    if score #start_time_left counter matches 1..9 run \
        schedule function blockhunt_plus:actions/start_game 1s

execute \
    if score #start_time_left counter matches 0 run \
        schedule function blockhunt_plus:actions/clear_time_left_actionbar 1s
