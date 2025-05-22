
# limitに1加算
scoreboard players add $limit reizoDebug.Roll 1

# 人狼じゃないロールしてない奴対象。
tag @e[tag=!KameServer_WereWolf.Job_WereWolf,tag=Test,type=armor_stand,sort=random,limit=1] add KameServer_WereWolf.Job_WereWolf

# 人狼じゃない奴は市民だ。
tag @e[tag=Test,tag=!KameServer_WereWolf.Job_WereWolf,tag=KameServer_WereWolf.WereWolfGame_Player,type=armor_stand] add KameServer_WereWolf.Job_Citizen
