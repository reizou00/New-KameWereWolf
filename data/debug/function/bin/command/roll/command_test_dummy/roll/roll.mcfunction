
# limitに1加算
scoreboard players add $limit reizoDebug.Roll 1

# 人狼じゃないロールしてない奴対象。
tag @e[tag=!KameServer_WereWolf.Job_WereWolf,tag=Test,type=armor_stand,sort=random,limit=1] add KameServer_WereWolf.Job_WereWolf