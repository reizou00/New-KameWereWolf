
# プレイヤー中心に...
execute as @a[tag=KameServer_WereWolf.WereWolfGame_Player] at @s run function kame_werewolf:system/end/reset

# dataリセット


# limitを0にset
scoreboard players set $limit KameSrever_WereWolf.Roll 0