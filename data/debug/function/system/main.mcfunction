
# もし、ゲームがstartしていたなら、何回やるかをset!
execute \
if data storage kameserever_werewolf:debug {Start:true} run \
function debug:bin/macro/if_score/limit/..now with storage kameserever_werewolf:macros

# TODO:勝利判定をリセットしきれていないので、しきる。
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
    },\
    Onlyonce:\
    {\
    Win:false\
    }\
}

# 一人もプレイヤーがいないじゃないか！
execute \
unless score $TotalPlayer KameSrever_WereWolf.Roll matches 1.. run \
function debug:bin/command/roll/command_test_dummy/end/main