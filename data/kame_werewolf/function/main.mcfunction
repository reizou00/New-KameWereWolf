
# スタート処理やらを常時検知やらしたいので呼び出し。
function kame_werewolf:system/main

# プレイヤーの動作
execute as @a at @s run function kame_werewolf:player/main

# 設定を適用したいので常時呼び出し。
function kame_werewolf:setting/main

#> debug処理
function debug:main