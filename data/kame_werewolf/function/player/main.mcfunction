
#============================================
# 略称:
# Roll内ReamainCount == Roll.ReamainCount
# Temp内ReamainCount == Temp.ReamainCount
#============================================

#> ライブラリの呼び出し
    # アイテムストレージ検知ライブラリ
    function sid:player/main

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

#> ジョブごとの動作
    # 人狼
    execute \
    at @s[tag=KameServer_WereWolf.Job_WereWolf] run \
    function kame_werewolf:player/job/werewolf/main
    # 市民
    execute \
    at @s[tag=KameServer_WereWolf.Job_Citizen] run \
    function kame_werewolf:player/job/citizen/main

# !:絶対にresetは一番下に置くこと
#> data君たちお疲れ様!また頑張ってくれ!
function sid:player/reset
