
#> Tag消去
    tag @s remove KameServer_WereWolf.Job_Citizen
    tag @s remove KameServer_WereWolf.Job_WereWolf
    tag @s remove KameServer_WereWolf.Rolled
    tag @s remove KameServer_WereWolf.WereWolfGame_Player
    tag @s remove KameServer_WereWolf.Job_WereWolf_slow

#> スコアリセット
    scoreboard players reset @s KameSrever_WereWolf.Roll
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_Citizen
    scoreboard players reset @s KameSrever_WereWolf.Roll_Onlyonce_WereWolf
    scoreboard players reset $TotalPlayer KameSrever_WereWolf.Roll

#> dataリセット。
data merge storage kameserever_werewolf:system \
{\
Start:false\
}
data merge storage kameserever_werewolf:system \
{\
Victory_Defeat:\
    {\
    Win:\
        {\
        WereWolf:false,\
        Citizen:false\
        },\
    Lose:\
        {\
        WereWolf:false,\
        Citizen:false\
        }\
    }\
}