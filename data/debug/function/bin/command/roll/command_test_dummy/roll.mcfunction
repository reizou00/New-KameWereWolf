
# 復活予定。
# particle electric_spark ~8 ~1.5 ~
# particle electric_spark ~-8 ~1.5 ~
# particle electric_spark ~ ~1.5 ~8
# particle electric_spark ~ ~1.5 ~-8
# particle electric_spark ~8 ~1.5 ~8
# particle electric_spark ~-8 ~1.5 ~-8
# particle electric_spark ~-8 ~1.5 ~8
# particle electric_spark ~8 ~1.5 ~-8
# particle electric_spark ~8 ~1.5 ~4
# particle electric_spark ~-8 ~1.5 ~-4
# particle electric_spark ~4 ~1.5 ~8
# particle electric_spark ~-4 ~1.5 ~8
# particle electric_spark ~4 ~1.5 ~-8
# particle electric_spark ~-8 ~1.5 ~4
# particle electric_spark ~-4 ~1.5 ~-8

#> Test君基準にやっちまいな!
# 俺らはゲームを始めているぞ！
tag @e[tag=Test] add KameServer_WereWolf.WereWolfGame_Player

# 最初は0
scoreboard players set $limit KameSrever_WereWolf.Roll 0

# dataで管理
data merge storage kameserever_werewolf:debug \
{\
Start:true\
}