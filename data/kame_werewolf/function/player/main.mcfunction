
#> ライブラリの呼び出し
    # アイテムストレージ検知ライブラリ
    function sid:player/main
    # アイテムの使用検知ライブラリ
    function reizo_itemused:player/main

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
