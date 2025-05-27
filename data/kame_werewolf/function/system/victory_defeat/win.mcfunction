
# まずはタイトルでお知らせ。
title @s title \
[\
    {\
    "text": "勝利！",\
    "color": "green"\
    }\
]

# 音でもお知らせ。
playsound ui.toast.challenge_complete master @s ~ ~ ~ 1 1.1

# リセットだ！
function kame_werewolf:system/end/main
