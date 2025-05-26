
# 最初にリセットだ！
# function kame_werewolf:system/end/main

# 俺らはゲームを始めているぞ！
tag @a[gamemode=!spectator] add KameServer_WereWolf.WereWolfGame_Player

# 最初は0
scoreboard players set $limit KameSrever_WereWolf.Roll 0

# dataで管理
data merge storage kameserever_werewolf:system \
{\
Start:true\
}