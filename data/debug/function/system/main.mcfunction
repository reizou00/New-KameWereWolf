
# もし、ゲームがstartしていたなら、何回やるかをset!
execute \
if data storage kameserever_werewolf:debug {Start:true} run \
function debug:bin/macro/if_score/limit/..now with storage kameserever_werewolf:macros

#> どっちが勝ったんだよ！決めやがれ！
    # 人狼の数が、市民の数と同じなら...
    execute \
    if score $TotalPlayer reizoDebug.Roll matches 1.. \
    if score $TotalPlayer KameSrever_WereWolf.Roll matches 1.. \
    if score $WereWolf reizoDebug.Roll = $Citizen reizoDebug.Roll run \
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
    if score $TotalPlayer reizoDebug.Roll matches 1.. \
    if score $TotalPlayer KameSrever_WereWolf.Roll matches 1.. \
    if score $WereWolf reizoDebug.Roll matches 0 run \
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