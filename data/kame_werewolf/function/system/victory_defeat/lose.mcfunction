
# まずはタイトルでお知らせ。
title @s title \
[\
    {\
    "text": "敗北...",\
    "color": "red"\
    }\
]

# 音でもお知らせ。
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 0.6

# リセットだ！
function kame_werewolf:system/end/main
