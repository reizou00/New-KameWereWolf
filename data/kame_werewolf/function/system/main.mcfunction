

# もし、ゲームがstartしていたなら、何回やるかをset!
execute \
if data storage kameserever_werewolf:system {Start:true} run \
function kame_werewolf:bin/macro/if_score/limit/..now with storage kameserever_werewolf:macros

# もし、人狼が決まっていたなら、人狼じゃない奴は市民だ。
function kame_werewolf:bin/macro/if_score/limit/now.. with storage kameserever_werewolf:macros

# 人狼の数が、市民の数と同じなら...
execute \
if entity @a[tag=KameServer_WereWolf.WereWolfGame_Player] \
if score $WereWolf KameSrever_WereWolf.Roll = $Citizen KameSrever_WereWolf.Roll run \
data merge storage kameserever_werewolf:system \
{\
Victory_Defeat:\
    {\
    Win:\
        {\
        WereWolf:true,\
        Citizen:false\
        }\
    },\
Onlyonce:\
    {\
    Win:false\
    }\
}

#> どっちが勝った！
    # 人狼の勝ち、市民の負け。
    execute \
    if data storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Win:\
            {\
            WereWolf:true\
            },\
        Lose:\
            {\
            Citizen:true\
            }\
        }\
    } \
    as @a[tag=KameServer_WereWolf.Job_WereWolf] at @s run \
    function kame_werewolf:system/victory_defeat/win/werewolf/main
