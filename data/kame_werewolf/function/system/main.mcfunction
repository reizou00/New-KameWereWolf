

# もし、ゲームがstartしていたなら、何回やるかをset!
execute \
if data storage kameserever_werewolf:system {Start:true} run \
function kame_werewolf:bin/macro/if_score/limit/..now with storage kameserever_werewolf:macros

# もし、人狼が決まっていたなら、人狼じゃない奴は市民だ。
function kame_werewolf:bin/macro/if_score/limit/now.. with storage kameserever_werewolf:macros

#> 誰が勝った！
    # 人狼の数が、市民の数と同じなら人狼の勝ち。
    execute \
    if score $TotalPlayer KameSrever_WereWolf.Roll matches 1.. \
    if score $WereWolf KameSrever_WereWolf.Roll = $Citizen KameSrever_WereWolf.Roll run \
    data merge storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Win:\
            {\
            WereWolf:true,\
            Citizen:false\
            },\
            Lose:\
            {\
            WereWolf:false,\
            Citizen:true\
            }\
        }\
    }
    # 市民が勝ったよね、じゃあ人狼は0だ。
    execute \
    if score $TotalPlayer KameSrever_WereWolf.Roll matches 1.. \
    if score $WereWolf KameSrever_WereWolf.Roll matches 0 run \
    data merge storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Win:\
            {\
            WereWolf:false,\
            Citizen:true\
            },\
            Lose:\
            {\
            WereWolf:true,\
            Citizen:false\
            }\
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
            WereWolf:true,\
            Citizen:false\
            }\
        }\
    } \
    as @a[tag=KameServer_WereWolf.Job_WereWolf] at @s run \
    function kame_werewolf:system/victory_defeat/win
    execute \
    if data storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Lose:\
            {\
            WereWolf:false,\
            Citizen:true\
            }\
        }\
    } \
    as @a[tag=KameServer_WereWolf.Job_Citizen] at @s run \
    function kame_werewolf:system/victory_defeat/lose
    # 人狼の負け、市民の勝ち。
    execute \
    if data storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Win:\
            {\
            WereWolf:false,\
            Citizen:true\
            }\
        }\
    } \
    as @a[tag=KameServer_WereWolf.Job_Citizen] at @s run \
    function kame_werewolf:system/victory_defeat/win
    execute \
    if data storage kameserever_werewolf:system \
    {\
    Victory_Defeat:\
        {\
        Lose:\
            {\
            WereWolf:true,\
            Citizen:false\
            }\
        }\
    } \
    as @a[tag=KameServer_WereWolf.Job_WereWolf] at @s run \
    function kame_werewolf:system/victory_defeat/lose

