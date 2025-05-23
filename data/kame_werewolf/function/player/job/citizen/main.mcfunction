
# 役職がついてる奴はrolledだよな。
tag @s add KameServer_WereWolf.Rolled

#> set_upをまだしていないならOnlyonceを1にset。
execute \
unless score @s KameSrever_WereWolf.Roll_Onlyonce_Citizen matches 2 run \
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_Citizen 1

#> 一回だけ実行したいよね。
execute at @s\
[\
tag=KameServer_WereWolf.Rolled,\
scores=\
    {\
    KameSrever_WereWolf.Roll_Onlyonce_Citizen=1\
    }\
] run \
function kame_werewolf:player/job/citizen/set_up