
#============================================
# 略称:
# Roll内ReamainCount == Roll.ReamainCount
# Temp内ReamainCount == Temp.ReamainCount
#============================================

#> ライブラリの呼び出し
    # アイテムストレージ検知ライブラリ
    function sid:player/main
    # アイテムの使用検知ライブラリ
    function reizo_itemused:player/main

#> 役職の定義
    # 人狼
    execute \
    as @e[scores={KameSrever_WereWolf.Roll=2}] run \
    tag @s add KameServer_WereWolf.Job_WereWolf
    # 市民
    execute \
    as @e[scores={KameSrever_WereWolf.Roll=1}] run \
    tag @s add KameServer_WereWolf.Job_Citizen

#> 役職の人数を計算
    # 人狼
    execute \
    store result score $WereWolf KameSrever_WereWolf.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_WereWolf]
    # 市民
    execute \
    store result score $Citizen KameSrever_WereWolf.Roll \
    if entity @e[tag=KameServer_WereWolf.Job_Citizen]

#> トータルプレイヤーの人数を計算
execute \
store result score $TotalPlayer KameSrever_WereWolf.Roll \
if entity @e[tag=KameServer_WereWolf.WereWolfGame_Player]

#> 人狼が足りない、多すぎる、を解消するために...
    # RemainCountにTotalPlayerの値をコピーする。
    execute \
    store result score $RemainCount KameSrever_WereWolf.Roll run \
    scoreboard players get $TotalPlayer KameSrever_WereWolf.Roll
    # RemainCountからCitizenの値を引く。
    scoreboard players operation $RemainCount KameSrever_WereWolf.Roll -= $Citizen KameSrever_WereWolf.Roll
    # Roll.RemainCountの値を、Temp.RemainCountの値に一時格納する。
    execute \
    store result score $RemainCount KameSrever_WereWolf.Temp run \
    scoreboard players get $RemainCount KameSrever_WereWolf.Roll
    # Temp.ReamainCountから、人狼の人数を引く。
    scoreboard players operation $RemainCount KameSrever_WereWolf.Temp -= $WereWolf KameSrever_WereWolf.Roll

#> エラー処理を施す。
    # Temp.ReamainCountが1の時、エラーとなり、強制的にRollスコアが0の人が人狼となる。
    execute \
    at @s\
    [\
    tag=KameServer_WereWolf.Rolled,\
    scores=\
        {\
        KameSrever_WereWolf.Roll=0\
        }\
    ] run \
    tag @s add KameServer_WereWolf.Job_WereWolf

#> ジョブごとの動作
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    function kame_werewolf:player/job/werewolf/main
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    function kame_werewolf:player/job/citizen/main



#> debug用execute
    # admin用
    execute \
    at @s[tag=reizoDebugTag.Admin] run \
    function debug:player/main
    # ロールルールの対象の人。
    execute at @s[tag=reizoDebugTag.Approve_Roll,tag=!KameServer_WereWolf.Rolled] run \
    function debug:player/approve_roll/main

# !:絶対にresetは一番下に置くこと
#> data君たちお疲れ様!また頑張ってくれ!
function sid:player/reset
