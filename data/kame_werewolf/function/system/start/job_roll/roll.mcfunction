
# limitに1加算
scoreboard players add $limit KameSrever_WereWolf.Roll 1

# 人狼じゃないロールしてない奴対象。
tag @r[tag=!KameServer_WereWolf.Job_WereWolf] add KameServer_WereWolf.Job_WereWolf

# 人狼じゃない奴は市民だ。
tag @a[tag=!KameServer_WereWolf.Job_WereWolf,tag=KameServer_WereWolf.WereWolfGame_Player,tag=KameServer_WereWolf.Rolled] add KameServer_WereWolf.Job_Citizen