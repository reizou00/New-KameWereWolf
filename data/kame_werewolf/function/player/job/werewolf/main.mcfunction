
# 役職がついてる奴はrolledだよな。
tag @s add KameServer_WereWolf.Rolled

#> set_upをまだしていないならOnlyonceを1にset。
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
at @s[scores={KameSrever_WereWolf.CoolTime=0}] run \
function kame_werewolf:item/job/werewolf/werewolf_tool/used/final

# 市民に近づいたなら足を遅くする。
attribute @s[tag=KameServer_WereWolf.Job_WereWolf_slow] movement_speed base set 0.06
# 近づいていないら元に戻す。
attribute @s[tag=!KameServer_WereWolf.Job_WereWolf_slow] movement_speed base reset