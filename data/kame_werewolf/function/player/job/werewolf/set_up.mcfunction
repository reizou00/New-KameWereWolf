
#> 人狼用set_up
    # 人狼だと通告。
    title @s title "あなたの役職は..."
    title @s subtitle "人狼です。"
    # 人狼用アイテムを支給。
function kame_werewolf:bin/get_item/werewolf_tool

# もう一回実行しないようにスコアを上げる
scoreboard players add @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 1