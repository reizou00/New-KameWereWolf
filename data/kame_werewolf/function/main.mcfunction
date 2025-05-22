
# 何回やるかスコアsetだ！
execute \
if data storage kameserever_werewolf:system {Start:true} run \
function kame_werewolf:bin/macro/if_score/limit with storage kameserever_werewolf:macros

# プレイヤーの動作
execute as @a at @s run function kame_werewolf:player/main

# 設定を適用したいので常時呼び出し。
function kame_werewolf:setting/main

#> debug処理
    # エンティティの動作
    execute as @e at @s run function debug:entity/main