
# 役職がついてる奴はrolledだよな。
tag @s add KameServer_WereWolf.Rolled

#> Temp.ReamainCountが0だった場合成功、成功の場合set_upをまだしていないならOnlyonceを1にset。
execute \
unless score @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf matches 2 run \
scoreboard players set @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf 1

#> 一回だけ実行したいよね。
execute as @a\
[\
tag=KameServer_WereWolf.Rolled,\
scores=\
    {\
    KameSrever_WereWolf.Roll_Onlyonce_WereWolf=1\
    }\
] at @s run \
function kame_werewolf:player/job/werewolf/set_up

# 使ったな！
execute at @s[tag=KameServer_WereWolf.Job_WereWolf_Used] run \
function kame_werewolf:item/job/werewolf/werewolf_tool/used/main

# 戻しとこうか。
execute \
if score @s KameSrever_WereWolf.CoolTime matches 0 run \
function kame_werewolf:player/job/werewolf/used/final