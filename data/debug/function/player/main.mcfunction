
#> ライブラリの呼び出し
    # アイテムストレージ検知ライブラリ
    function sid:player/main
    # アイテムの使用検知ライブラリ
    function reizo_itemused:player/main

# adminだけに動かせる特権のような物。
execute at @s[tag=reizoDebugTag.Admin] run function debug:player/admin/main

# ロール許可の対象の人。
execute at @s[tag=reizoDebugTag.Approve_Roll,tag=!KameServer_WereWolf.Rolled] run \
function debug:player/approve_roll/main

# !:絶対にresetは一番下に置くこと
#> data君たちお疲れ様!また頑張ってくれ!
function sid:player/reset
