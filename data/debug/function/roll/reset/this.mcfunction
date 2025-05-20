
# スコアリセット
scoreboard players reset @s KameSrever_WereWolf.Roll
scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_Citizen
scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf

# Tagリセット
tag @s remove KameServer_WereWolf.Rolled
tag @s remove KameServer_WereWolf.Job_Citizen
tag @s remove KameServer_WereWolf.Job_WereWolf
tag @s remove KameServer_WereWolf.WereWolfGame_Player

#> 演出も付けよう。
    # 音が必要
    playsound entity.ender_dragon.flap master @s ~ ~ ~ 1 0.5
    # particleのや～つ。
    particle minecraft:dust{color:[0.5,0.5,0.5],scale:1} ~ ~1 ~ 0.3 0.5 0.3 0 10 normal @s
    particle minecraft:entity_effect{color:[0.5, 0.5, 0.5, 1.0]} ~ ~1 ~ 0.3 0.5 0.3 0 10 normal @s
    # 言葉で僕に教えてくれ！
    tellraw @s \
    {\
    "text": "\n[リセットしました]\n",\
    "color": "red",\
    "clickEvent": \
    {\
    "action": "run_command",\
    "value": "/function kame_werewolf:system/end/main"\
    },\
    "hoverEvent": \
        {\
        "action": "show_text",\
        "contents": "\
                    ロールを再度使用できます。\n\
                    このリセットの適応はあなただけです。\n\
                    [クリックすると全員再度利用可能。]\
                    "\
        }\
    }
