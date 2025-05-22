
# 俺らはゲームを始めているぞ！
execute as @e[tag=Test,type=armor_stand] at @s run \
tag @s add KameServer_WereWolf.WereWolfGame_Player

# 最初は0
scoreboard players set $limit reizoDebug.Roll 0

# dataで管理
data merge storage kameserever_werewolf:debug \
{\
Start:true\
}