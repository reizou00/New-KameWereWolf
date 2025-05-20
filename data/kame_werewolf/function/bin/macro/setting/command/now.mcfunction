
# now == number_of_werewolf
$execute \
if data storage kameserever_werewolf:setting \
{\
setting:\
    {\
    number_of_werewolf:$(Before_now)\
    }\
} run \
tellraw @s \
[\
    {\
    "text": "[人狼を$(text)人設定にする。]",\
    "color":"green",\
    "hoverEvent": \
    {\
    "action": "show_text",\
    "contents": \
        {\
        "text": "左クリックで変更！"\
        }\
    },\
    "clickEvent": \
        {\
        "action": "run_command",\
        "value": "/data merge storage kameserever_werewolf:setting \
            {\
            setting:\
                {\
                number_of_werewolf:$(After_now)\
                }\
            }"\
        }\
    }\
]