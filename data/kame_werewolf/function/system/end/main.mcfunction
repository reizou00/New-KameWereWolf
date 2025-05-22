
# プレイヤー中心に...
execute as @a[tag=KameServer_WereWolf.WereWolfGame_Player] at @s run function kame_werewolf:system/end/reset

# dataリセット
data merge storage kameserever_werewolf:system {Start:false}