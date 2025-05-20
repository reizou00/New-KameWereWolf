

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