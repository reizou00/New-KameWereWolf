
# スコア作成
scoreboard objectives add KameSrever_WereWolf.CoolTime dummy
scoreboard objectives add KameSrever_WereWolf.Roll dummy
scoreboard objectives add KameSrever_WereWolf.Roll_Onlyonce_WereWolf dummy
scoreboard objectives add KameSrever_WereWolf.Roll_Onlyonce_Citizen dummy

# 初期設定は人狼二人
data merge storage kameserever_werewolf:setting \
{\
setting:\
    {\
    number_of_werewolf:2\
    }\
}

#> ライブラリの呼び出し
    # アイテム使用検知ライブラリ
    function reizo_itemused:reload


tellraw @a "DataPack導入完了。"